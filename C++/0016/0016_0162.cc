class Dummy {};
template<class T , int i> class Dummy_temp {};
typedef char * Dummy_type;


class CA {
protected:
 int a[2][3];
 short *b[10];
 float *(*c[20])[30]; 
 short Dummy::*e[20][1];
 int   Dummy::*(Dummy::* f[10])[20];
 double g[20][30][40][50];
 Dummy h[20];
 Dummy_type i[30][40]; 
 Dummy_temp<int,20> j[10][30];
}caobj;


struct  SA {
private:
 int a[2][3];
 short *b[10];
 float *(*c[20])[30]; 
 short Dummy::*e[20][1];
 int   Dummy::*(Dummy::* f[10])[20];
 double g[20][30][40][50];
 Dummy h[20];
 Dummy_type i[30][40]; 
 Dummy_temp<int,20> j[10][30];
}saobj;


union  UA {
 int a[2][3];
 short *b[10];
 float *(*c[20])[30]; 
 short Dummy::*e[20][1];
 int   Dummy::*(Dummy::* f[10])[20];
 double g[20][30][40][50];
 Dummy h[20];
 Dummy_type i[30][40]; 
 Dummy_temp<int,20> j[10][30];
}uaobj;


namespace  NA {
 int a[2][3];
 short *b[10];
 float *(*c[20])[30]; 
 short Dummy::*e[20][1];
 int   Dummy::*(Dummy::* f[10])[20];
 double g[20][30][40][50];
 Dummy h[20];
 Dummy_type i[30][40]; 
 Dummy_temp<int,20> j[10][30];
};



template <class T,int I> class TPA {
 int a[2][3];
 short *b[10];
 float *(*c[20])[30]; 
 short Dummy::*e[20][1];
 int   Dummy::*(Dummy::* f[10])[20];
 double g[20][30][40][50];
 Dummy h[20];
 Dummy_type i[30][40]; 
 Dummy_temp<int,20> j[10][30];
 T temp[I]; 
};
class TPA <int ,10>  tpaobj;


typedef int TAA[2][3];
typedef short *TAB[10];
typedef float *(*TAC[20])[30]; 
typedef short Dummy::*TAE[20][1];
typedef int   Dummy::*(Dummy::* TAF[10])[20];
typedef double TAG[20][30][40][50];
typedef Dummy TAH[20];
typedef Dummy_type TAI[30][40]; 
typedef Dummy_temp<int,20> TAJ[10][30];


#include <stdio.h>
int main(){
  puts("ok");
}
