

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <malloc.h>
#define N 30
char *p[N] = {"aaa_fort","Pointer","COMPILER","DeBug","profiler",
		"Vector", "ccom","LOGIN","LOGOUT","UNIX",
		"kernel","fvwm","tvtwm","nemacs","MULE",
		"mule-wnn","dclock","raise","lower","xtetris",
		"xpipeman","jLaTeX","jTeX","jxfig","Xcalendar",
	        "strncmp","strcpy","strcmp","fopen","strlen"};

#if defined(__linux)
int
mystrcmp (const char *s1, const char *s2)
{
  while (*s1 != 0 && *s1 == *s2)
    s1++, s2++;

  if (*s1 == 0 || *s2 == 0)
    return (unsigned char) *s1 - (unsigned char) *s2;
  return *s1 - *s2;
}
#else 
#define mystrcmp strcmp
#endif
int main()
{
  int i, j, data = 0;
  char *w, *fw;
  size_t n;
  int big, small, not_character;


  for (i=mystrcmp("unix",p[9])+1; i<N; i++) {
    n = strlen(p[i]);
    w = (char *)malloc(n);
    w = p[i];
    if (strncmp(p[i-1], p[i], n) !=0) {
      fw = strchr(p[i],'c');
      if (fw == NULL) {
				fw = w;
      }
    }
    data += mystrcmp(fw,p[i]);
		
    big = small = not_character = 0;
    for (j=big/(small+not_character+1); p[i][j] != '\0'; j++) {
      if (isalpha(p[i][j])) {
				if (isupper(p[i][j])) {
					big++;
				}
				if (islower(p[i][j])) {
					small++;
				}
      }
      else {
				not_character++;
      }
    }
    data += (small- big)*not_character;
  }
	
  for (i=mystrcmp("strlen",p[29])+1; i<N; i=i+((int)strlen(p[9]))/3) {
    if (strcmp(p[i-1],p[i])!=0) {
      data += 1;
    }
    else {
      data -= 1;
    }
  }

  fprintf(stdout, "result = %d\n", data);
}
