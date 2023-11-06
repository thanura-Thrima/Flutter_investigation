import '../model/card.dart';

class CardRepository{
  static CardRepository? sRepository;
  List<CardFile> mCardList =[];
  CardRepository.localCardRepository() {
    mCardList.add(CardFile('test1', 'subTitle1',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test2', 'subTitle2',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test3', 'subTitle3',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test4', 'subTitle4',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test5', 'subTitle5',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test6', 'subTitle6',isBuyAvailable: true,isListenAvailable: true));
    mCardList.add(CardFile('test7', 'subTitle7',isBuyAvailable: true,isListenAvailable: true));
  }

  static CardRepository getInstance() {
    sRepository ??= CardRepository.localCardRepository();
    return sRepository!;
  }
  
  void addCard(String title,String subTitle) {
    mCardList.add(CardFile(title, subTitle));
  }

  bool deleteCard(String id) {
    for(int i = 0; i< mCardList.length;i++){
       if(mCardList[i].mTitle.compareTo(id)==0) {
         mCardList[i].disable = true;
         return true;
       }
    }
    return false;
  }
}