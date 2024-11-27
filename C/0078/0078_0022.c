#include  <stdio.h>

float fd01;
int main()
{
  void func07();
  func07();
}

void func07()
{
      float fa01,fa02,fa03,fa04,fa05;

      void func071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      func071(fa01,fa02,fa03,fa04,fa05);
}

void func071(float fb01,float fb02,float fb03,float fb04,float fb05)
{
   printf("%g %g %g %g %g \n",fb01,fb02,fb03,fb04,fb05);
   return;
}

