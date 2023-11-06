class CardFile {
  final String mTitle;
  final String mSubTitle;
  bool isBuyAvailable;
  bool isListenAvailable;
  bool disable = false;
  CardFile(this.mTitle,this.mSubTitle,{this.isBuyAvailable = true,this.isListenAvailable = true});
}