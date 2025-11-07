void main(List<String> args) {
  var nowanint = int.parse(args[0]);

  print(nowanint);

  if(nowanint < 0){
    print("is negative");
  }
    if(nowanint == 0){
    print("is zero");
  }
    if(nowanint > 0){
    print("is positive");
  }
}
