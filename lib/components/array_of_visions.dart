import 'reuse_card.dart';

class ArrayOfVisions {
  List<ReusableCard> visions;

  ArrayOfVisions({this.visions});

  void addedButton() {
    visions.add(
      ReusableCard(),
    );
  }
}
