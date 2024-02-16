#include <stdio.h>

void case5(int a) {
  switch (a) {
  case 1:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 1\n");
    }
    break;
  case 2:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 2\n");
    }
    break;
  case 3:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 3\n");
    }
    break;
  case 4:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 4\n");
    }
    break;
  case 5:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 5\n");
    }
    break;
  case 6:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 6\n");
    }
    break;
  case 7:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 7\n");
    }
    break;
  case 8:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 8\n");
    }
    break;

  case 9:
    {
    int i;
    double a[100];
    for (i=0; i<100; ++i) {
      a[i] = i;
    }
    if (a[30]==30) {
      printf("ok\n");
    }
    else {
      printf("ng ... %lf\n",a[30]);
    }
    printf("a == 9\n");
    }
    break;
  default:
    printf("other\n");
  }
}

int main() {
  int i;
  for (i = 1; i <= 9; ++i) {
    case5(i);
  }
  puts("OK");
  return 0;
}
