
#include <stdio.h>
char x=0;
int main(){
  char (*p)(char&)=0;
  char *pc=0;
  try {
    switch (x){
    case 0:
      throw (char&)x;
    case 1:
      throw p;
    case 2:
      throw pc; 
    }
  }
  catch (...){
  }
  puts("ok");
}
