class CA {
 public:
  char **a;
  unsigned char ***b;
  signed char **c;
  short ***d;
  signed short ****e;
  unsigned short ****f;
  int ***g;
  signed int ****h;
  unsigned int ******i;
  long int *****j;
  signed long int ****k;
  unsigned long int *****l; 
  long long int ****m; 
  signed long long int ****n; 
  unsigned long long int *****o; 
  float ****p;
  double ***q;
  long double ***r;
  bool ***s;
  wchar_t ***t;
}ccobj;

struct SA {
 public:
  char ***a;
  unsigned char ***b;
  signed char ***c;
  short ***d;
  signed short ***e;
  unsigned short ***f;
  int ***g;
  signed int ***h;
  unsigned int ***i;
  long int ***j;
  signed long int ***k;
  unsigned long int ***l; 
  long long int ***m; 
  signed long long int ***n; 
  unsigned long long int ***o; 
  float ***p;
  double ***q;
  long double ***r;
  bool ***s;
  wchar_t ***t;
}scobj;

union UA {
  char ***a;
  unsigned char ***b;
  signed char ***c;
  short ***d;
  signed short ***e;
  unsigned short ***f;
  int ***g;
  signed int ***h;
  unsigned int ***i;
  long int ***j;
  signed long int ***k;
  unsigned long int ***l; 
  long long int ***m; 
  signed long long int ***n; 
  unsigned long long int ***o; 
  float ***p;
  double ***q;
  long double ***r;
  bool ***s;
  wchar_t ***t;
}ucobj;

namespace  NA {
  char ***na_a;
  unsigned char ***na_b;
  signed char ***na_c;
  short ***na_d;
  signed short ***na_e;
  unsigned short ***na_f;
  int ***na_g;
  signed int ***na_h;
  unsigned int ***na_i;
  long int ***na_j;
  signed long int ***na_k;
  unsigned long int ***na_l; 
  long long int ***na_m; 
  signed long long int ***na_n; 
  unsigned long long int ***na_o; 
  float ***na_p;
  double ***na_q;
  long double ***na_r;
  bool ***na_s;
  wchar_t ***na_t;
};

template <class T, int I> class TPA {
  char ***a;
  unsigned char ***b;
  signed char ***c;
  short ***d;
  signed short ***e;
  unsigned short ***f;
  int ***g;
  signed int ***h;
  unsigned int ***i;
  long int ***j;
  signed long int ***k;
  unsigned long int ***l; 
  long long int ***m; 
  signed long long int ***n; 
  unsigned long long int ***o; 
  float ***p;
  double ***q;
  long double ***r;
  bool ***s;
  wchar_t ***t;
  T ***temp1;
  T (*temp2)[I];
};
TPA<int ,10> tpaobj;

typedef char ***TAA;
typedef  unsigned char ***TAB;
typedef  signed char ***TAC;
typedef  short ***TAD;
typedef  signed short ***TAE;
typedef  unsigned short ***TAF;
typedef  int ***TAG;
typedef  signed int ***TAH;
typedef  unsigned int ***TAI;
typedef  long int ***TAJ;
typedef  signed long int ***TAK;
typedef  unsigned long int ***TAL; 
typedef  long long int ***TAM; 
typedef  signed long long int ***TAN; 
typedef  unsigned long long int ***TAO; 
typedef  float ***TAP;
typedef  double ***TAQ;
typedef  long double ***TAR;
typedef  bool ***TAS;
typedef  wchar_t ***TAT;




class Dummy {
}dummyobj;
template<class T, int i> class Dummy_temp {
 public:
  T a;
  T b[i];
};
typedef short Type;
class CB {
 void (*a)();
 char (**b)();
 short (*c)(int,char);
 int **d;
 char **********e;
 int Dummy::**h;
 char Dummy::**i;
 int (*j)[10];
 char (*(*k)[20])[30];
 short (*l)[20][30];
 Dummy *m; 
 Dummy *********n;
 Type  *o;
 Type  **p;
 Dummy_temp<int,10> *q;
}caobj;


struct SB {
 void (*a)();
 char (**b)();
 short (*c)(int,char);
 int **d;
 char **********e;
 int Dummy::**h;
 char Dummy::**i;
 int (*j)[10];
 char (*(*k)[20])[30];
 short (*l)[20][30];
 Dummy *m; 
 Dummy *********n;
 Type  *o;
 Type  **p;
 Dummy_temp<int,10> *q;
}saobj;


union UB {
 void (*a)();
 char (**b)();
 short (*c)(int,char);
 int **d;
 char **********e;
 int Dummy::**h;
 char Dummy::**i;
 int (*j)[10];
 char (*(*k)[20])[30];
 short (*l)[20][30];
 Dummy *m; 
 Dummy *********n;
 Type  *o;
 Type  **p;
 Dummy_temp<int,10> *q;
}uaobj;


namespace NB {
 void (*a)();
 char (**b)();
 short (*c)(int,char);
 int **d;
 char **********e;
 int Dummy::**h;
 char Dummy::**i;
 int (*j)[10];
 char (*(*k)[20])[30];
 short (*l)[20][30];
 Dummy *m; 
 Dummy *********n;
 Type  *o;
 Type  **p;
 Dummy_temp<int,10> *q;
};


template <class T, int I> class TPB {
 void (*a)();
 char (**b)();
 short (*c)(int,char);
 int **d;
 char **********e;
 int Dummy::**h;
 char Dummy::**i;
 int (*j)[10];
 char (*(*k)[20])[30];
 short (*l)[20][30];
 Dummy *m; 
 Dummy *********n;
 Type  *o;
 Type  **p;
 Dummy_temp<int,10> *q;
 T (**temp)[I];
};
TPB<float,100> tpbobj;


typedef  void (*TBA)();
typedef   char (**TBB)();
typedef   short (*TBC)(int,char);
typedef   int **TBD;
typedef   char **********TBE;
typedef   int Dummy::**TBH;
typedef   char Dummy::**TBI;
typedef   int (*TBJ)[10];
typedef   char (*(*TBK)[20])[30];
typedef   short (*TBL)[20][30];
typedef   Dummy *TBM; 
typedef   Dummy *********TBN;
typedef   Type  *TBO;
typedef   Type  **TBP;
typedef   Dummy_temp<int,10> *TBQ;

#include <stdio.h>
int main(){
  puts("ok");
}
