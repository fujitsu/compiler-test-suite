#include <stdio.h>
char * i;
char *& a=i;
int *const ii=0;
int *const & b=ii;
short iii;
short & c=iii;
long const & d=10;
bool const * iiii;
bool const * & e=iiii;
int cond=0;
int main(){
 try {
  switch (cond) {
   case 0:
    throw a; 
   case 1:
    throw b; 
   case 2:
    throw c; 
   case 3:
    throw d; 
   case 4:
    throw e; 
  }
 }
 catch  (...){
 }
 puts("ok");
}
