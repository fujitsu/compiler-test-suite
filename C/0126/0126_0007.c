#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAXLINES 5000
#define MAXLEN 1000
#define ALLOCSIZE 10000
char *lineptr[MAXLINES];

long long int readlines(char *lineptr[], int nlines);
void writelines(char *lineptr[], int nlines);

void dum_qsort(void *lineptr[], int left, int right, int (*comp)(const char *, const char *));
int numcmp(const char *, const char*);

static char allocbuf[ALLOCSIZE];
static char *allocp = allocbuf;
int main(){

  int nlines;
  int numeric = 0;

  if ((nlines = (int)(long long int)readlines(lineptr, MAXLINES)) >= 0){
    dum_qsort((void **) lineptr, 0, nlines-1, (int (*)(const char *, const char *))(numeric ? numcmp : strcmp));
    writelines(lineptr, nlines);

  }
  else {
    printf("input too big to sort\n");

  }
  exit(0);
}

char *alloc(int n) {
  if (allocbuf + ALLOCSIZE - allocp >= n) {
    allocp += n;
    return allocp - n;
  }
  else
    return 0;
}

long double get_line (char s[], long double i) {

  switch ((int)i) {
    case 1:
      i = (long double)6;
      strcpy(s, "meron");
      break;
    case 2:
      i = (long double)(double)7;
      strcpy(s, "orange");
      break;
    case 3:
      i = (long double)(float)6;
      strcpy(s, "apple");
      break;
    case 4:
      i = (long double)(unsigned int)5;
      strcpy(s, "kiwi");
      break;
    case 5:
      i = 6;
      strcpy(s, "bread");
      break;
  }
  return (long double)i;
}

long long int readlines(char *lineptr[], int maxlines) {

  int len , nlines, i = 5;
  char *p, line[MAXLEN];

  nlines = 0;
  while ((len = (int)get_line(line, (long double)i)) > 0) {
    if (nlines >= maxlines || (p = alloc(len)) == NULL)
      return -1;
    else {
      line[len-1] = '\0';
      strcpy(p, line);
      lineptr[nlines++] = p;
    }
    i--;
  }
  return nlines;
}

void writelines(char *lineptr[], int nlines) {
  
  int i;

  for (i =0; i< nlines; i++)
    printf("%s\n",lineptr[i]);
}
void dum_qsort(void *v[], int left, int right, int (*comp)(const char *, const char *)) {
  
  int i, last;
  void swap(void *v[], int, int);

  if (left >= right)
    return;
  swap(v, left, (left + right)/2);
  last = left;
  for(i = left+1; i <= right ; i++)
    if ((*comp)(v[i], v[left]) < 0)
      swap(v, ++last, i);
  swap(v, left, last);
  dum_qsort(v, left, last-1, comp);
  dum_qsort(v, last+1, right, comp);
}

void swap(void *v[], int i, int j) {
  
  void *temp;

  temp = v[i];
  v[i] = v[j];
  v[j] = temp;
}
   

int numcmp(const char *s1, const char *s2) {
  
  double v1, v2;

  v1 = atof(s1);
  v2 = atof(s2);
  if (v1 < v2)
    return -1;
  else if (v1 > v2)
    return 1;
  else
    return 0;
}
