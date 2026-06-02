#include <iostream> 
using namespace std;

#include "036.h"
int i=0;
void func(){
 i++;
 i--;
}
int main(){
 func();
 func2(i);
}
