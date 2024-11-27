
#include <stdio.h>

void f(char* that);
void g(char* that);
void
func(char* that)
{
  char *a1, *a2, *a3;

  that[0]++;
  if (that != 0) {
    a1 = that;
    a2 = that;
  }
  else {
    a2 = a1 = 0;
  }
  f(a1);
  g(a2);
  return;
}

void
f(char* that)
{
  char* i;
  char* tmp = that;
  printf(that);
  for (i = "####   OK   ####\n"; 
       (*that = *i) != '\0';
       that++, i++)
    ;
}

void
g(char* that)
{
  printf(that);
}
int main()
{
  static char ws[] = "####  START ####\n";
  ws[0]--;
  func(ws);
  printf("####   END  ####\n");
}
