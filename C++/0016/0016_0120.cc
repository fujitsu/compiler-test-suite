int cnt=0;

void f1(){

 try {
   if (cnt==0)
     throw (10);
   else if(cnt==1)
     throw (int *)0;
   else if(cnt==2)
     throw (int (*)[10])0;
 }
 catch (int){ }
 catch (int*){ }
 catch (int (*)[10]){ }
}

template <class T> class TEMP{
};
template <class T> class TEMP2{
};
TEMP<int> obj; 
TEMP< TEMP2<int> > obj2; 
class A {};
#include <stdio.h>
int main(){
f1();

 puts("ok"); 
}
