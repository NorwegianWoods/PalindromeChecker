public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String b = onlyLetters(noCapitals(noSpaces(word)));
  if(reverse(word).equals(b)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    for(int i = str.length() - 1; i >= 0; i--){
      sNew = sNew + str.substring(i, i+1);
    }
    String aNew = onlyLetters(noCapitals(noSpaces(sNew)));
    return aNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String a = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      a += sWord.charAt(i);
    }
  }
  return a;
}

public int numLetters(String sString){
 int count = 0;
 for(int i = 0; i < sString.length(); i++){
   if(Character.isLetter(sString.charAt(i)) == true){
     count = count + 1;
   }
 }
 return count;
}

public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}
