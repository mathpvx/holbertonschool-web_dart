void main(List<String> args) {
  var nowanint = int.parse(args[0]);

  if(nowanint < 0){
    print("$nowanint is negative");
  }
    if(nowanint == 0){
    print("$nowanint is zero");
  }
    if(nowanint > 0){
    print("$nowanint is positive");
  }
}
