struct SG {}sgobj;

class CG : public SG {
 public:
  struct CSG {
  }csgobj;
}cgobj;
  
union UG {}ugobj;

template<class T, int i> class TAG {};

TAG<char,10> tempobj;

typedef void TV;
TV (*tf1())(){}
typedef int TI;
TI (*(*tf2(int, char))(bool, short))(void){}
typedef char TC;
TC *tf3(int){}
typedef void TVV;
TVV ***tf4(char, short **(*)()){}
typedef short TS;
TS &tf5(int,...){}
typedef unsigned int TUI;
TUI SG::*tf6(unsigned int, unsigned char SG::*){}
typedef float TF;
TF (*tf7(void))[10][20]{}
typedef CG TCC;
TCC tf8(CG, CG*, CG&){}
typedef CG::CSG TCCC;
TCCC tf9(CG::CSG, CG::CSG*, CG::CSG&){}
typedef TAG<char,10> TT;
TT tf10(TAG<int,1>,TAG<short,3>*,TAG<char,2>){}
typedef bool TB;
TB UG::*tf11(wchar_t, bool UG::*){}

#include <stdio.h>
int main(){
  puts("ok");
}
