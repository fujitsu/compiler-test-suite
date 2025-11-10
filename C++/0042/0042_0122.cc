enum class Color : short; 

enum class Color : short {
  Red,
  Green,
  Blue,
};

enum OldColor {
  Red,
  Green,
  Blue
};

enum OtherColor {
  Magenta,
  Yellow,
  Cyan
};

enum Typed:char {
  type0,
  type1,
  type2
};

int main()
{
  OldColor color_old1 = Red;
  
  OtherColor other = Magenta;
  bool b = other >= Red; 
  
  
  Color color_c11 = Color::Red; 
  Typed typed = type0;          
}
