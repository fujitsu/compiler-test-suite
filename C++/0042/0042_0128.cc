#include <cstdio>

namespace parser
{
  template<char C=0,char ...rest> 
  struct Char
  {
    static bool Parse(const char *&text)
    {
      if(C==*text)
	{
	  text++;
	  return true;
	}
      else
	{
	  return Char<rest...>::Parse(text);
	}
    }
  };
  
  template<char...rest>
  struct Char<0,rest...>
  {
    static bool Parse(const char *&text)
    {
      return false;
    }
  };
}

int main()
{
  typedef parser::Char<'a','b','c','d','e'> charany; 
  
  const char *source="ecbdabdAabcde";
  while(charany::Parse(source))
    printf("1");
  printf("\n");
}

