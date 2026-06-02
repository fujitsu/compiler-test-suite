static int st=0;
#include "014.h"
#include "012.h"
#include "013.h"
 
#include "015.h" 
#include "016.h" 
#include "017.h" 
#include <stdio.h>
extern void funch();
extern void funcx(); extern void funcg();
#include "019.h" 
void funcxx(){}
#include "020.h" 
int main(){
 funca();
 funcb();
 funcc();
 funcd();
 funce();
 funcf();
 funcg();
 funch();
 funci();
 funcx();
 if (st ==10)  printf("ok\n");
}
#include "018.h" 
void funcx(){
 st++;
 st--;
 st++;
}
