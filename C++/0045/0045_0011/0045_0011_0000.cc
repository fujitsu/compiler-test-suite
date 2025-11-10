
int st=0;
#include <stdio.h>
extern void func2();  
#include "003.h" 
void func1(){
  st ++;
}
#include "001.h" 
#define funcfb funcfb2
#include "001.h" 
#undef funcfb
#include "002.h" 
#include "000.h" 
