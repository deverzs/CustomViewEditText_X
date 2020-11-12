import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cougar Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

//inspiration from flutter packages
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: Genre(),
      title: new Text(
        'Cougar MovieApp',
        textScaleFactor: 2,
      ),
      image: Image.asset('assets/cougars.png'),
      loadingText: Text("Loading"),
      backgroundColor: Colors.blue[100],
      photoSize: 75.0,
      loaderColor: Colors.blue,
    );
  }
}

//Select A genre of movie
//Zsuzsanna
//inspiration from whatsupcoders
class Genre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text("Cougar MovieApp"),
      ),
      body: Padding(
          padding: EdgeInsets.all(4),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              staggeredTiles: [
                //superhero
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //action
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //sci fi
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //horror
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //animation
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //comedy
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //fantasy
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //drama
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //romance
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),

                //musical
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(4, .25),
              ],
              children: <Widget>[
                //superhero
                Card(
                    elevation: 10,
                    color: new Color(0xffd31715),
                    child: genre("Super Heroes", "Save the Universe",
                        Color(0xffdfa46c), context, 'superhero')),
                imageBox('fantastic'),
                imageBox('wonder'),
                imageBox('captain'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //action
                imageBox('sherlock'),
                Card(
                    elevation: 10,
                    color: Colors.yellow,
                    child: genre("Action  ", "Heart Pounding Energy",
                        Colors.blue, context, 'action')),
                imageBox('die'),
                imageBox('speed'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //sci fi
                Card(
                    elevation: 10,
                    color: Color(0xff59758b),
                    child: genre("Sci Fi    ", "Out of This World",
                        Colors.redAccent, context, 'scifi')),
                imageBox('star'),
                imageBox('matrix'),
                imageBox('alien'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //horror
                imageBox('cabin'),
                Card(
                    elevation: 10,
                    color: Colors.brown,
                    child: genre("Horror  ", "Stay Safely Inside",
                        Colors.red[900], context, 'horror')),
                imageBox('hell'),
                imageBox('us'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //animation
                Card(
                    elevation: 10,
                    color: Colors.blue[200],
                    child: genre("Kids     ", "Of         All    Ages        ",
                        Colors.pinkAccent, context, 'animation')),
                imageBox('frozen'),
                imageBox('inside'),
                imageBox('brave'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //comedy
                imageBox('scary'),
                Card(
                    elevation: 10,
                    color: Colors.orange[400],
                    child: genre("Funny  ", "Side Splitting Laughter",
                        Colors.red, context, 'comedy')),
                imageBox('hangover'),
                imageBox('submarine'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //fantasy
                Card(
                    elevation: 10,
                    color: Colors.red,
                    child: genre("Make Believe", "Open Mind",
                        Colors.yellow[400], context, 'fantasy')),
                imageBox('avatar'),
                imageBox('fantasy'),
                imageBox('hobbit'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //drama
                imageBox('rocky'),
                Card(
                    elevation: 10,
                    color: Colors.pink[100],
                    child: genre("Drama  ", "Live a Little Dream", Colors.blue,
                        context, 'drama')),
                imageBox('her'),
                imageBox('arctic'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //romance
                Card(
                    elevation: 10,
                    color: Colors.grey,
                    child: genre("Lovers  ", "Find    Each Other",
                        Colors.yellow[100], context, 'romance')),
                imageBox('casablanca'),
                imageBox('notebook'),
                imageBox('titanic'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),

                //musical
                imageBox('todd'),
                Card(
                    elevation: 10,
                    color: Colors.purpleAccent,
                    child: genre("Music  ", "Hear the Rhythm's Beat",
                        Colors.white, context, 'musical')),
                imageBox('west'),
                imageBox('sound'),
                Card(
                  elevation: 10,
                  color: Colors.blue,
                ),
              ],
            ),
          )),
    );
  }

  Widget genre(
      String title, String subTitle, Color color, BuildContext context, String passGenre) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              title,
              style: TextStyle(
                  color: color, fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
                subTitle,
                style: TextStyle(
                    color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 2,
          ),
          RaisedButton(
            child: Text('SEE MORE', style: TextStyle(fontSize: 20)),
            color: color,
            onPressed: () {
              MovieSelect().setGenre(passGenre);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MovieSelect()));
            },
          ),
        ],
      ),
    );
  }

  Widget imageBox(String img) {
    return Container(
      child: FittedBox(
        child: Image.asset('assets/${img}.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}

//Esai
//ListView where you select from the movies a set of Favorites
class MovieSelect extends StatelessWidget
{
  static String _genreSelection = '';//to be decided from Genre screen
  void setGenre(String genre) {_genreSelection = genre;}
  @override
  Widget build(BuildContext context) {
    GenreList(genreSelection: _genreSelection);
    GenreList().getGenre(_genreSelection);
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Movies"),
      ),
      body: Container(
        height: 1000,
        margin: EdgeInsets.all(10),
        color: new Color(0x5f37a1),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GenreList.genreList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GenreList.genreList[index];
                  }
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('View Favorites', style: TextStyle(fontSize: 20)),
                  color: Color(0xffe0f5ff),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DisplayFavorites()));
                  },
                ),
              ],
            ),
          ],//children
        ),
      ),
    );
  }
}

//List of MovieCardsWidget to be shown depending on genre selected.
class GenreList {
  static List<Widget> genreSuperhero = [
    MovieCardsWidget(name: 'Avengers Endgame', genre: 'Superhero', location: 'assets/avengers_endgame.jpg'),
    MovieCardsWidget(name: 'Black Panther', genre: 'Superhero', location: 'assets/black_panther.jpg'),
    MovieCardsWidget(name: 'Spider-Man: Into the Spider-Verse', genre: 'Superhero', location: 'assets/spider_verse.jpg'),
    MovieCardsWidget(name: 'Shazam!', genre: 'Superhero', location: 'assets/shazam.jpg'),
    MovieCardsWidget(name: 'The Dark Knight Rises', genre: 'Superhero', location: 'assets/dark_knight.jpg'),
  ];
  static List<Widget> genreAction = [
    MovieCardsWidget(name: 'Kingsman: The Golden Circle', genre: 'Action', location: 'assets/kingsman.webp'),
    MovieCardsWidget(name: 'Mad Max: Fury Road', genre: 'Action', location: 'assets/mad_max.jpg'),
    MovieCardsWidget(name: 'Bright', genre: 'Action', location: 'assets/bright.jpg'),
    MovieCardsWidget(name: 'The Equalizer', genre: 'Action', location: 'assets/equalizer.jpg'),
    MovieCardsWidget(name: 'Extraction', genre: 'Action', location: 'assets/extraction.jpg'),
  ];
  static List<Widget> genreScifi = [
    MovieCardsWidget(name: 'Interstellar', genre: 'Sci-fi', location: 'assets/interstellar.jpg'),
    MovieCardsWidget(name: 'Oblivion', genre: 'Sci-fi', location: 'assets/oblivion.jpg'),
    MovieCardsWidget(name: 'Ender\'s Game', genre: 'Sci-fi', location: 'assets/enders_game.jpg'),
    MovieCardsWidget(name: 'The Martian', genre: 'Sci-fi', location: 'assets/martian.jpg'),
    MovieCardsWidget(name: 'Gravity', genre: 'Sci-fi', location: 'assets/gravity.jpg'),
  ];
  static List<Widget> genreHorror = [
    MovieCardsWidget(name: 'Get Out', genre: 'Horror', location: 'assets/get_out.jpg'),
    MovieCardsWidget(name: 'Halloween', genre: 'Horror', location: 'assets/halloween.jpg'),
    MovieCardsWidget(name: 'IT', genre: 'Horror', location: 'assets/it_movie.jpg'),
    MovieCardsWidget(name: 'A Quiet Place', genre: 'Horror', location: 'assets/quiet_place.jpg'),
    MovieCardsWidget(name: 'The Mist', genre: 'Horror', location: 'assets/the_mist.jpg'),
  ];
  static List<Widget> genreAnimation = [
    MovieCardsWidget(name: 'The Disappearance of Haruhi Suzumiya', genre: 'Animation', location: 'assets/haruhi.jpg'),
    MovieCardsWidget(name: 'Monsters, Inc.', genre: 'Animation', location: 'assets/monsters_inc.jpg'),
    MovieCardsWidget(name: 'Soul', genre: 'Animation', location: 'assets/soul.jpg'),
    MovieCardsWidget(name: 'Spies in Disguise', genre: 'Animation', location: 'assets/spies_in_disguise.jpg'),
    MovieCardsWidget(name: 'Your Name', genre: 'Animation', location: 'assets/your_name.jpg'),
  ];
  static List<Widget> genreComedy = [
    MovieCardsWidget(name: 'Borat', genre: 'Comedy', location: 'assets/borat.jpg'),
    MovieCardsWidget(name: 'Dumb and Dumber', genre: 'Comedy', location: 'assets/dumb_and_dumber.jpg'),
    MovieCardsWidget(name: 'The Hangover', genre: 'Comedy', location: 'assets/hangover.jpg'),
    MovieCardsWidget(name: 'Grown Ups', genre: 'Comedy', location: 'assets/grown_ups.jpg'),
    MovieCardsWidget(name: 'Jumanji', genre: 'Comedy', location: 'assets/jumanji.jpg'),
  ];
  static List<Widget> genreFantasy = [
    MovieCardsWidget(name: 'Fantastic Beasts: The Crimes of Grindelwald', genre: 'Fantasy', location: 'assets/fantastic_beasts.jpg'),
    MovieCardsWidget(name: 'The Hobbit: The Battle of the Five Armies', genre: 'Fantasy', location: 'assets/hobbit.jpg'),
    MovieCardsWidget(name: 'The Chronicles of Narnia: The Voyage of the Dawn Treader', genre: 'Fantasy', location: 'assets/narnia.jpg'),
    MovieCardsWidget(name: 'Pirates of the Caribbean: Dead Men Tell No Tales', genre: 'Fantasy', location: 'assets/pirates.jpg'),
    MovieCardsWidget(name: 'Warcraft', genre: 'Fantasy', location: 'assets/warcraft.jpg'),
  ];
  static List<Widget> genreDrama = [
    MovieCardsWidget(name: 'Black Swan', genre: 'Drama', location: 'assets/blackswan.jpg'),
    MovieCardsWidget(name: 'Ford v Ferrari', genre: 'Drama', location: 'assets/fordvferrari.jpg'),
    MovieCardsWidget(name: 'The Hummingbird Project', genre: 'Drama', location: 'assets/hummingbird_project.jpg'),
    MovieCardsWidget(name: 'Moneyball', genre: 'Drama', location: 'assets/moneyball.jpg'),
    MovieCardsWidget(name: 'Whiplash', genre: 'Drama', location: 'assets/whiplash.jpg'),
  ];
  static List<Widget> genreRomance = [
    MovieCardsWidget(name: 'Call Me by Your Name', genre: 'Romance', location: 'assets/callmeby_yourname.jpg'),
    MovieCardsWidget(name: 'The Fault in Our Stars', genre: 'Romance', location: 'assets/fault_inour_stars.jpg'),
    MovieCardsWidget(name: 'Her', genre: 'Romance', location: 'assets/her_movie.jpg'),
    MovieCardsWidget(name: 'Paper Towns', genre: 'Romance', location: 'assets/paper_towns.jpg'),
    MovieCardsWidget(name: 'Twilight', genre: 'Romance', location: 'assets/twilight.jpg'),
  ];
  static List<Widget> genreMusical = [
    MovieCardsWidget(name: 'Bohemian Rhapsody', genre: 'Musical', location: 'assets/bohemian_rhapsody.jpg'),
    MovieCardsWidget(name: 'La La Land', genre: 'Musical', location: 'assets/lalaland.jpg'),
    MovieCardsWidget(name: 'Les Misérables', genre: 'Musical', location: 'assets/les_miserables.jpg'),
    MovieCardsWidget(name: 'The Muppets', genre: 'Musical', location: 'assets/muppets.jpg'),
    MovieCardsWidget(name: 'Sing', genre: 'Musical', location: 'assets/sing.jpg'),
  ];

  final String genreSelection;//pass in genre selected from Genre Select screen; lowercase no spaces
  static List<Widget> genreList = [];
  GenreList({Key key, this.genreSelection});

  void getGenre(genreSelection) {
    if(genreSelection == 'superhero') {
      genreList = genreSuperhero;}
    else if(genreSelection == 'action'){genreList = genreAction;
    } else if(genreSelection == 'scifi')
    {
      genreList = genreScifi;
    } else if(genreSelection == 'horror')
    {
      genreList = genreHorror;
    } else if(genreSelection == 'animation')
    {
      genreList = genreAnimation;
    } else if(genreSelection == 'comedy')
    {
      genreList = genreComedy;
    } else if(genreSelection == 'fantasy')
    {
      genreList = genreFantasy;
    } else if(genreSelection == 'drama')
    {
      genreList = genreDrama;
    } else if(genreSelection == 'romance')
    {
      genreList = genreRomance;
    } else if(genreSelection == 'musical') {
      genreList = genreMusical;
    } else{print('NO GENRE SELECTED, COMBINE ALL'); genreList = [
      ...genreSuperhero,
      ...genreAction,
      ...genreScifi,
      ...genreHorror,
      ...genreAnimation,
      ...genreComedy,
      ...genreFantasy,
      ...genreDrama,
      ...genreRomance,
      ...genreMusical,
    ];
    }
  }
}

//Create titles with picture of movie, name, and a star to add to favorites
class MovieCardsWidget extends StatefulWidget {
  final String name;
  final String genre;
  final String location;//location of asset ex. 'assets/image1.jpg'
  static int totalFavs = 0;
  //static List<Widget> favMovies = [];//MovieCardsWigets get added here when favorited
  MovieCardsWidget({Key key, this.name, this.genre, this.location}) : super(key: key);

  @override
  _MovieCardsWidgetState createState() => _MovieCardsWidgetState();
}

class _MovieCardsWidgetState extends State<MovieCardsWidget> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        width: 200,
        child: Card(
            color: Color(0xffe0f5ff),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Wrap(
              children: <Widget>[
                Image.asset(widget.location, fit: BoxFit.cover),
                ListTile(
                  title: Text(widget.name),
                  subtitle: Text(widget.genre),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: StarWidget(name: widget.name, genre: widget.genre, location: widget.location),
                ),
              ],
            )
        )
    );
  }

}
//adds a favorite button
class StarWidget extends StatefulWidget {
  final String name;
  final String genre;
  final String location;//location of asset ex. 'assets/image1.jpg'
  static int index;
  static int totalFavs = 0;
  static List<Widget> favMovies = [];//MovieCardsWigets get added here when favorited
  StarWidget({Key key, this.name, this.genre, this.location}) : super(key: key);

  @override
  StarWidgetState createState() => StarWidgetState();
}

class StarWidgetState extends State<StarWidget>  {
  bool starred = true;
  String _addToFavorite = 'add to favorites';
  String _removeFromFavorite = 'remove from favorites';
  String resultFavorite = 'add to favorites';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Container(padding: EdgeInsets.all(0),
        child: IconButton(
            icon: starred ? Icon(Icons.star_border) : Icon(Icons.star),
            color: Colors.yellow[500],
            onPressed: (toggleStar)

        ),
      ),
      SizedBox(
          width: 100,
          child: Container(
            child: Text('$resultFavorite'),
          )
      )
    ],
    );
  }
  void toggleStar() {
    setState(() {
      if(starred) {
        starred = false;
        //resultFavorite = _removeFromFavorite;
        StarWidget.index = StarWidget.totalFavs;
        StarWidget.totalFavs++;
        StarWidget.favMovies.add(FavoriteCardsWidget(name: this.widget.name, genre: this.widget.genre, location: this.widget.location));
        print("Favorited");
      }
      else {
        //starred = true;
        //resultFavorite = _addToFavorite;
        //StarWidget.totalFavs--;
        //StarWidget.favMovies.removeAt(StarWidget.index);
        print("Unfavorited");
        //_MovieCardsWidgetState().removeFromFavorites();
      }
    });
  }
}


class FavoriteCardsWidget extends StatefulWidget {
  final String name;
  final String genre;
  final String location;//location of asset ex. 'assets/image1.jpg'
  static int totalFavs = 0;
  //static List<Widget> favMovies = [];//MovieCardsWigets get added here when favorited
  FavoriteCardsWidget({Key key, this.name, this.genre, this.location}) : super(key: key);

  @override
  _FavoriteCardsWidgetState createState() => _FavoriteCardsWidgetState();
}

class _FavoriteCardsWidgetState extends State<FavoriteCardsWidget> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        width: 200,
        child: Card(
            color: Color(0xffe0f5ff),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Wrap(
              children: <Widget>[
                Image.asset(widget.location, fit: BoxFit.cover),
                ListTile(
                  title: Text(widget.name),
                  subtitle: Text(widget.genre),
                ),
              ],
            )
        )
    );
  }

}
// Displays Favorites Selected by the User in the previous screen
class DisplayFavorites extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text( "MovieApp"),
        ),
        body: Container(
          height: 1000,
          margin: EdgeInsets.all(10),
          color: new Color(0x5f37a1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: StarWidget.favMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return StarWidget.favMovies[index];
                      }
                  )

              ),

              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text('Refresh', style: TextStyle(fontSize: 20)),
                    color: Color(0xffe0f5ff),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DisplayFavorites()));
                    },
                  ),
                ],
              ),
            ],

          ),
        )

    );
  }
}

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.blue[200],
          child: new ListView(
      children: [
          new DrawerHeader(
            child: Text(""),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/cougars.png',), scale: .25 ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            color: Colors.blue[200],
            child: new ListTile(
              leading: Icon(
                Icons.home,
                size: 50,
                color: Colors.pink,
              ),
              title: new Text(
                'Select Genre',
                style: TextStyle(fontSize: 25, color: Colors.pink),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => new Genre()));
                //Genre();
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          new ListTile(
            leading: Icon(
              Icons.movie,
              color: Colors.black87,
              size: 50,
            ),
            title: new Text(
              'Select Movies',
              style: TextStyle(fontSize: 25, color: Colors.black87),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => new MovieSelect()));
            },
          ),
          SizedBox(
            height: 40,
          ),
          new ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
            title: new Text(
              'Selected Favorites',
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => new DisplayFavorites()));
            },
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 20, left:15, bottom: 5),
            child: Text(
              'Thank you for your support of',
              style: TextStyle(fontSize: 15, color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
          ),

        Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Cougar MovieApp',
              style: TextStyle(fontSize: 30, color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
          ),
      ],
    ),
        ));
  }
}
