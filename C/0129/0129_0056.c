#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func();
int eda;
int edia = 10;
int *ediap = &eda;
int (*edifp)() = func;
int static seda;
int static sedia = 20;
int main()
{
int i=3;
static int sda;
static int sdia = 30;
printf(" start\n");
eda = edia;
seda = sedia;
sda = sdia;
func();
(*edifp)();
switch(i)
{
case 1:
 i++;
case 2:
 i++;
case 3:
 i++;
case 4:
 i++;
case 5:
 i++;
case 6:
 i++;
}
printf(" end \n");
exit (0);
}

int func()
{
}
