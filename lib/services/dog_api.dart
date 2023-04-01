

class DogApi{

  String inputBreedName;
  String name = 'Could not get details!';
  String weight = '-N/A-';
  String height = '-N/A-';
  String lifeSpan = '-N/A-';
  String temperament = '-N/A-';
  String imgRefId = '-N/A-';
  String imgUrl = '-N/A-';

  DogApi({required this.inputBreedName});

  // TODO: Install http package
  // TODO: Implement getData()
  // API 1: https://api.thedogapi.com/v1/breeds/search?q=$inputBreedName
  // API 2: https://api.thedogapi.com/v1/images/$imgRefId

}