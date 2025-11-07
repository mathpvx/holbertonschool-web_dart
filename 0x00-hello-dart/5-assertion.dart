void main(List<String> args) {
  var score = int.parse(args[0]);
  if (score >= 80) {
    print("You Passed");
  }
  
  assert(score >= 80, "The score must be bigger or equal to 80\n");
}
