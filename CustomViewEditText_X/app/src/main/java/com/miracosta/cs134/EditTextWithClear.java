package com.miracosta.cs134;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.res.ResourcesCompat;

public class EditTextWithClear extends AppCompatEditText {

    Drawable mClearButtonImage;

    public void init() {
        mClearButtonImage = ResourcesCompat.getDrawable(
                getResources(),
                R.drawable.ic_clear_black,
                null
        );

        //If clear(X) tapped - clear text
        setOnTouchListener(new OnTouchListener() {
            float clearButtonStart; //LTR
            float clearButtonEnd;  //RTL
            boolean isClearButtonClicked = false;

            @Override
            public boolean onTouch(View view, MotionEvent event) {
                //drawable on end of text?
                if ((getCompoundDrawablesRelative()[2] != null)) {

                    //Direction check
                    //RTL
                    if (getLayoutDirection() == LAYOUT_DIRECTION_RTL) {
                        //get end of button on left
                        clearButtonEnd = mClearButtonImage.getIntrinsicWidth() + getPaddingStart();
                        //check location of touch
                        // - if before end of button, isClearButtonClicked TRUE
                        if (event.getX() < clearButtonEnd) {
                            isClearButtonClicked = true;
                        }
                    } else { //LTR
                        //get start of button on right
                        clearButtonStart = (getWidth() - getPaddingEnd() - mClearButtonImage.getIntrinsicWidth());
                        //check location of touch
                        // - if after start of button, isClearButtonClicked TRUE
                        if (event.getX() > clearButtonStart) {
                            isClearButtonClicked = true;
                        }
                    }// end direction check

                    //Check if X is tapped
                    if (isClearButtonClicked) {
                        //ACTION DOWN? -- showClearButton -- opaque button
                        if (event.getAction() == MotionEvent.ACTION_DOWN) {
                            mClearButtonImage = ResourcesCompat.getDrawable(
                                    getResources(),
                                    R.drawable.ic_clear_opaque,
                                    null
                            );
                            showClearButton();
                        } //end Action Down check

                        //ACTION UP? -- hideClearButton -- black button
                        if (event.getAction() == MotionEvent.ACTION_UP) {
                            mClearButtonImage = ResourcesCompat.getDrawable(
                                    getResources(),
                                    R.drawable.ic_clear_black,
                                    null
                            );
                            getText().clear(); //get rid of the text that was input
                            hideClearButton();
                        } //end Action Up check
                    } else { //Clear X not clicked
                        return false; //return false since not clicked
                    } //end X tapped check

                } //end drawable on end of text check

                return false; //return false since drawable not on end of text
            }
        }); //end OnTouchListener

        //If text changes, show/hide clear(X)
        addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
                //nothing
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
                showClearButton();
            }

            @Override
            public void afterTextChanged(Editable editable) {
                //nothing
            }
        }); //end TextWatcher

    } //end init()

    //constructors
    public EditTextWithClear(Context context) {
        super(context);
        init();
    }

    public EditTextWithClear(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public EditTextWithClear(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    //show/hide buttons
    private void showClearButton() {
        setCompoundDrawablesRelativeWithIntrinsicBounds(
                null, //start
                null, //above
                mClearButtonImage, //end
                null  //below
        );
    }

    private void hideClearButton() {
        setCompoundDrawablesRelativeWithIntrinsicBounds(
                null, //start
                null, //above
                null, //end
                null  //below
        );
    }
} //end class
