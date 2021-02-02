package com.entelliteq.fea.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.entelliteq.fea.Helper.ItemTouchHelperAdapter;
import com.entelliteq.fea.Helper.ItemTouchHelperViewHolder;
import com.entelliteq.fea.Helper.OnStartDragListener;
import com.entelliteq.fea.R;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;

public class MyRecyclerAdapter extends RecyclerView.Adapter<MyRecyclerAdapter.MyViewHolder>
implements ItemTouchHelperAdapter {


    Context context;
    List<String> stringList;
    OnStartDragListener listener;

    public MyRecyclerAdapter(Context context, List<String> stringList, OnStartDragListener listener) {
        this.context = context;
        this.stringList = stringList;
        this.listener = listener;
    }

    @Override
    public boolean onItemMove(int fromPosition, int toPosition) {
        Collections.swap(stringList, fromPosition, toPosition);
        notifyItemMoved(fromPosition, toPosition);
        return true;
    }

    @Override
    public void onItemDismiss(int postition) {
        stringList.remove(postition);
        notifyItemRemoved(postition);
    }


    public class MyViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.txt_title)
        TextView txt_title;

        @BindView(R.id.txt_number)
        TextView txt_number;

        @BindView(R.id.item)
        CardView item;

        Unbinder unbinder;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            unbinder = ButterKnife.bind(this, itemView);
        }
    }


    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new MyViewHolder(LayoutInflater.from(context).inflate(R.layout.layout_card_item, parent, false));
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        holder.txt_number.setText(new StringBuilder().append(position));
        holder.txt_title.setText(stringList.get(position));

        holder.item.setOnLongClickListener(view -> {
            listener.onStartDrag(holder);
            return true;
        });

//        holder.item.setOnTouchListener((view, motionEvent) -> {
//            final int action = motionEvent.getAction();
//            if(action == MotionEvent.ACTION_DOWN) {
//                listener.onStartDrag(holder);
//            }
//            return false;
//        });

    }

    @Override
    public int getItemCount() {
        return stringList.size();
    }










}
