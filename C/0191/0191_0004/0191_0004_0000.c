#include <stdio.h>
int xx00,xx01,xx02,xx03,xx04,xx05,xx06,xx07,xx08,xx09;
int xx10,xx11,xx12,xx13,xx14,xx15,xx16,xx17,xx18,xx19;
int xx20,xx21,xx22,xx23,xx24,xx25,xx26,xx27,xx28,xx29;
int xx30,xx31,xx32,xx33,xx34,xx35,xx36,xx37,xx38,xx39;
int xx40,xx41,xx42,xx43,xx44,xx45,xx46,xx47,xx48,xx49;
int xx50,xx51,xx52,xx53,xx54,xx55,xx56,xx57,xx58,xx59;
int xx60,xx61,xx62,xx63,xx64,xx65,xx66,xx67,xx68,xx69;
int xx70,xx71,xx72,xx73,xx74,xx75,xx76,xx77,xx78,xx79;
int xx80,xx81,xx82,xx83,xx84,xx85,xx86,xx87,xx88,xx89;
int xx90,xx91,xx92,xx93,xx94,xx95,xx96,xx97,xx98,xx99;
#pragma omp threadprivate(xx00,xx01,xx02,xx03,xx04,xx05,xx06,xx07,xx08,xx09)
#pragma omp threadprivate(xx10,xx11,xx12,xx13,xx14,xx15,xx16,xx17,xx18,xx19)
#pragma omp threadprivate(xx20,xx21,xx22,xx23,xx24,xx25,xx26,xx27,xx28,xx29)
#pragma omp threadprivate(xx30,xx31,xx32,xx33,xx34,xx35,xx36,xx37,xx38,xx39)
#pragma omp threadprivate(xx40,xx41,xx42,xx43,xx44,xx45,xx46,xx47,xx48,xx49)
#pragma omp threadprivate(xx50,xx51,xx52,xx53,xx54,xx55,xx56,xx57,xx58,xx59)
#pragma omp threadprivate(xx60,xx61,xx62,xx63,xx64,xx65,xx66,xx67,xx68,xx69)
#pragma omp threadprivate(xx70,xx71,xx72,xx73,xx74,xx75,xx76,xx77,xx78,xx79)
#pragma omp threadprivate(xx80,xx81,xx82,xx83,xx84,xx85,xx86,xx87,xx88,xx89)
#pragma omp threadprivate(xx90,xx91,xx92,xx93,xx94,xx95,xx96,xx97,xx98,xx99)
int main() {
  xx00=xx01=xx02=xx03=xx04=xx05=xx06=xx07=xx08=xx09=1;
  xx10=xx11=xx12=xx13=xx14=xx15=xx16=xx17=xx18=xx19=1;
  xx20=xx21=xx22=xx23=xx24=xx25=xx26=xx27=xx28=xx29=1;
  xx30=xx31=xx32=xx33=xx34=xx35=xx36=xx37=xx38=xx39=1;
  xx40=xx41=xx42=xx43=xx44=xx45=xx46=xx47=xx48=xx49=1;
  xx50=xx51=xx52=xx53=xx54=xx55=xx56=xx57=xx58=xx59=1;
  xx60=xx61=xx62=xx63=xx64=xx65=xx66=xx67=xx68=xx69=1;
  xx70=xx71=xx72=xx73=xx74=xx75=xx76=xx77=xx78=xx79=1;
  xx80=xx81=xx82=xx83=xx84=xx85=xx86=xx87=xx88=xx89=1;
  xx90=xx91=xx92=xx93=xx94=xx95=xx96=xx97=xx98=xx99=1;
#pragma omp parallel copyin(xx00,xx10,xx20,xx30,xx40,xx50,xx60,xx70,xx80,xx90)
  {
    if (xx00 != 1) printf("ng00 %d\n", xx00);
    if (xx10 != 1) printf("ng10 %d\n", xx10);
    if (xx20 != 1) printf("ng20 %d\n", xx20);
    if (xx30 != 1) printf("ng30 %d\n", xx30);
    if (xx40 != 1) printf("ng40 %d\n", xx40);
    if (xx50 != 1) printf("ng50 %d\n", xx50);
    if (xx60 != 1) printf("ng60 %d\n", xx60);
    if (xx70 != 1) printf("ng70 %d\n", xx70);
    if (xx80 != 1) printf("ng80 %d\n", xx80);
    if (xx90 != 1) printf("ng90 %d\n", xx90);
  }
  printf("pass\n");
  return 0;
}
