#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *foo(char *c);

char *foo(char *c)
{
  char *str = (char *)malloc(sizeof(char) * (strlen(c)+1));
  int i = 0, counter = 0;

  for (; c[i] != '\0'; ++i) {
    if (c[i] != '/'  &&
	c[i] != '='  &&
	c[i] != '*'  &&
	c[i] != '['  &&
	c[i] != ']'  &&
	c[i] != '#'  &&
	c[i] != '$'  &&
	c[i] != '%'
	) {
      str[counter++]  = c[i];
    }
  }
  str[counter]='\0';
  return str;
}

int main(int argc, char *argv[])
{
  char *c = "/abc/defg";
  char *str = foo(c);
  
  if (strcmp(str, "abcdefg") == 0) { printf("OK\n"); }
  else                             { printf("NG\n"); }
  free(str);
  return 0;
}
