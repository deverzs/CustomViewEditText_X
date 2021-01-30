
import 'package:cs481_finalproject/neighborhood.dart';


//Lists are all IndividualActivities, which take a name and information
class NeighborhoodActivity {

  Neighborhood hood;
  
  List<IndividualActivity> food = [];
  List<IndividualActivity> casino = [];
  List<IndividualActivity> nightlife =[];
  List<IndividualActivity> shopping = [];
  List<IndividualActivity> tours = [];
  List<IndividualActivity> arts = [];
  List<IndividualActivity> parks = [];
  List<IndividualActivity> sports = [];
  List<IndividualActivity> beach = [];
  List<IndividualActivity> attractions = [];


  NeighborhoodActivity(Neighborhood ni) {
    this.hood = ni;
  }

  /// These functions might be useful for Activities Search
  /// IN ORDER: food/casino/night/shop/tour/art/park/sport/beach/attraction
  /// ie: TFTFFFTFFF

  String checkLists() {
    String valids = "";
    food.isEmpty ? valids += "F" : valids += "T";
    casino.isEmpty ? valids += "F" : valids += "T";
    nightlife.isEmpty ? valids += "F" : valids += "T";
    shopping.isEmpty ? valids += "F" : valids += "T";
    tours.isEmpty ? valids += "F" : valids += "T";
    arts.isEmpty ? valids += "F" : valids += "T";
    parks.isEmpty ? valids += "F" : valids += "T";
    sports.isEmpty ? valids += "F" : valids += "T";
    beach.isEmpty ? valids += "F" : valids += "T";
    attractions.isEmpty ? valids += "F" : valids += "T";
    return valids;
  }

  //return string with all lists that are not empty
  // ie: /food:T/casino:F/night:T/shop:F/tour:F/art:F/park:T/sport:F/beach:F/attra:F

  String checkListsEnumerated() {
    String valids = "";
    food.isEmpty ? valids += "/food:F" : valids += "/food:T";
    casino.isEmpty ? valids += "/casino:F" : valids += "/casino:T";
    nightlife.isEmpty ? valids += "/night:F" : valids += "/night:T";
    shopping.isEmpty ? valids += "/shop:F" : valids += "/shop:T";
    tours.isEmpty ? valids += "/tour:F" : valids += "/tour:T";
    arts.isEmpty ? valids += "/art:F" : valids += "/art:T";
    parks.isEmpty ? valids += "/park:F" : valids += "/park:T";
    sports.isEmpty ? valids += "/sport:F" : valids += "/sport:T";
    beach.isEmpty ? valids += "/beach:F" : valids += "/beach:T";
    attractions.isEmpty ? valids += "/attra:F" : valids += "/attra:T";
    return valids;
  }

  @override
  String toString() {
    return "NeighborhoodActivity:: \n\t$hood \n\tFood: $food "
        "\n\tCasiono: $casino"
        "\n\tNightlife: $nightlife"
        "\n\tShopping: $shopping"
        "\n\tTours: $tours"
        "\n\tArts: $arts"
        "\n\tParks: $parks"
        "\n\tSports: $sports"
        "\n\tBeach:$beach"
        "\n\tAttractions: $attractions"  ;
  }

}


class IndividualActivity {

  String name;
  String information;

  IndividualActivity(String name, String info) {
    this.name = name;
    this.information = info;
  }

  @override
  String toString() {
    return "NAME: $name, Info: $information |";
  }

}



