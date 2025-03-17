#include <stdio.h>
#include <string.h>
typedef struct data1{
    int            intdata;
    unsigned int   uintdata;
    long           longdata;
    unsigned long  ulongdata;
    short          shortdata;
    unsigned short ushortdata;
    float          floatdata;
    double         doubledata;
    long double    ldoubledata;
    char           chardata;
    unsigned char  uchardata;
    signed char    schardata;
    signed char       schardata2;
}DATA1;

typedef struct data2{
    int            intdata;
    unsigned int   uintdata;
    long           longdata;
    unsigned long  ulongdata;
    short          shortdata;
    unsigned short ushortdata;
    float          floatdata;
    double         doubledata;
    long double    ldoubledata;
    char           chardata;
    unsigned char  uchardata;
    signed char    schardata;
    signed char       schardata2;
}DATA2;

typedef struct strdata{
    DATA1    data1data;
}STRDATA;

typedef struct dataint{
    int  intdata;
}DATAint;

typedef struct datauint{
    unsigned int  uintdata;
}DATAuint;

typedef struct datalong{
    long  longdata;
}DATAlong;

typedef struct dataulong{
    unsigned long  ulongdata;
}DATAulong;

typedef struct datashort{
    short  shortdata;
}DATAshort;

typedef struct dataushort{
    unsigned short  ushortdata;
}DATAushort;

typedef struct datafloat{
    float  floatdata;
}DATAfloat;

typedef struct datadouble{
    double  doubledata;
}DATAdouble;

typedef struct dataldouble{
    long double  ldoubledata;
}DATAldouble;

typedef struct datachar{
    char  chardata;
}DATAchar;

typedef struct datauchar{
    unsigned char  uchardata;
}DATAuchar;

typedef struct dataschar{
    signed char  schardata;
}DATAschar;

DATA1    **strdata1;
DATA2    **strdata2;
STRDATA  **strdata;
DATAint    **strintdata; 
DATAuint    **struintdata; 
DATAlong    **strlongdata; 
DATAulong    **strulongdata; 
DATAshort    **strshortdata; 
DATAushort    **strushortdata; 
DATAfloat    **strfloatdata; 
DATAdouble    **strdoubledata; 
DATAldouble    **strldoubledata; 
DATAchar    **strchardata; 
DATAuchar    **struchardata; 
DATAschar    **strschardata; 

void sub(){ 




    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata1)->schardata2),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata1)->schardata2),"cd") == 0)){
        printf("memalias OK(signed char same TAG/TYPE diff OFFSET)\n");
    }else{
        printf("not memalias(signed char same TAG/TYPE diff OFFSET)\n");
    }




    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->intdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->intdata == 5)){
        printf("memalias OK(signed char & int same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & int same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->uintdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->uintdata == 5)){
        printf("memalias OK(signed char & uint same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & uint same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->longdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->longdata == 5)){
        printf("memalias OK(signed char & long same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & long same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->ulongdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->ulongdata == 5)){
        printf("memalias OK(signed char & ulong same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ulong same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->shortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->shortdata == 5)){
        printf("memalias OK(signed char & short same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & short same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->ushortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->ushortdata == 5)){
        printf("memalias OK(signed char & ushort same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ushort same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->floatdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->floatdata == 5)){
        printf("memalias OK(signed char & float same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & float same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->doubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->doubledata == 5)){
        printf("memalias OK(signed char & double same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & double same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->ldoubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->ldoubledata == 5)){
        printf("memalias OK(signed char & ldouble same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ldouble same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata1)->chardata),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata1)->chardata),"cd") == 0)){
        printf("memalias OK(signed char & char same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & char same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata1)->uchardata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata1)->uchardata == 5)){
        printf("memalias OK(signed char & uchar same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & uchar same TAG diff TYPE/OFFSET)\n");
    }





    strcpy(&((*strdata1)->schardata2),"ab");
    strcpy(&((*strdata2)->schardata2),"cd");
    strcat(&((*strdata1)->schardata2),"cd");

    if((strcmp(&((*strdata1)->schardata2),"abcd") == 0) && (strcmp(&((*strdata2)->schardata2),"cd") == 0)){
        printf("memalias OK(signed char diff TAG same TYPE/OFFSET)\n");
    }else{
        printf("not memalias(signed char diff TAG same TYPE/OFFSET)\n");
    }




    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata2)->schardata2),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata2)->schardata2),"cd") == 0)){
        printf("memalias OK(signed char diff TAG/OFFSET same TYPE)\n");
    }else{
        printf("not memalias(signed char diff TAG/OFFSET same TYPE)\n");
    }




    strcpy(&((*strdata1)->schardata),"ab");
    (*strintdata)->intdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strintdata)->intdata == 5)){
        printf("memalias OK(signed char & int diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & int diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*struintdata)->uintdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*struintdata)->uintdata == 5)){
        printf("memalias OK(signed char & uint diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & uint diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strlongdata)->longdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strlongdata)->longdata == 5)){
        printf("memalias OK(signed char & long diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & long diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strulongdata)->ulongdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strulongdata)->ulongdata == 5)){
        printf("memalias OK(signed char & ulong diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & ulong diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strshortdata)->shortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strshortdata)->shortdata == 5)){
        printf("memalias OK(signed char & short diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & short diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strushortdata)->ushortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strushortdata)->ushortdata == 5)){
        printf("memalias OK(signed char & ushort diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & ushort diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strfloatdata)->floatdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strfloatdata)->floatdata == 5)){
        printf("memalias OK(signed char & float diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & float diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdoubledata)->doubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdoubledata)->doubledata == 5)){
        printf("memalias OK(signed char & double diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & double diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strldoubledata)->ldoubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strldoubledata)->ldoubledata == 5)){
        printf("memalias OK(signed char & ldouble diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & ldouble diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strschardata)->schardata),"ab");
    strcpy(&((*strchardata)->chardata),"cd");
    strcat(&((*strschardata)->schardata),"cd");

    if((strcmp(&((*strschardata)->schardata),"abcd") == 0) && (strcmp(&((*strchardata)->chardata),"cd") == 0)){
        printf("memalias OK(signed char & char diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & char diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*struchardata)->uchardata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*struchardata)->uchardata == 5)){
        printf("memalias OK(signed char & uchar diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(signed char & uchar diff TAG/TYPE same OFFSET)\n");
    }




    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->intdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->intdata == 5)){
        printf("memalias OK(signed char & int diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & int diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->uintdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->uintdata == 5)){
        printf("memalias OK(signed char & uint diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & uint diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->longdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->longdata == 5)){
        printf("memalias OK(signed char & long diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & long diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->ulongdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->ulongdata == 5)){
        printf("memalias OK(signed char & ulong diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ulong diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->shortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->shortdata == 5)){
        printf("memalias OK(signed char & short diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & short diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->ushortdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->ushortdata == 5)){
        printf("memalias OK(signed char & ushort diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ushort diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->floatdata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->floatdata == 5)){
        printf("memalias OK(signed char & float diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & float diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->doubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->doubledata == 5)){
        printf("memalias OK(signed char & double diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & double diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->ldoubledata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->ldoubledata == 5)){
        printf("memalias OK(signed char & ldouble diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & ldouble diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata2)->chardata),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata2)->chardata),"cd") == 0)){
        printf("memalias OK(signed char & char diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & char diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->schardata),"ab");
    (*strdata2)->uchardata = 5;
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && ((*strdata2)->uchardata == 5)){
        printf("memalias OK(signed char & uchar diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(signed char & uchar diff TAG/TYPE/OFFSET)\n");
    }




    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata)->data1data.schardata),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata)->data1data.schardata),"cd") == 0)){
        printf("memalias OK(signed char strmember & str same TAG/TYPE/OFFSET)\n");
    }else{
        printf("not memalias(signed char strmember & str same TAG/TYPE/OFFSET)\n");
    }



    strcpy(&((*strdata1)->schardata),"ab");
    strcpy(&((*strdata)->data1data.schardata2),"cd");
    strcat(&((*strdata1)->schardata),"cd");

    if((strcmp(&((*strdata1)->schardata),"abcd") == 0) && (strcmp(&((*strdata)->data1data.schardata2),"cd") == 0)){
        printf("memalias OK(signed char strmember & str same TAG/TYPE diff OFFSET)\n");
    }else{
        printf("not memalias(signed char strmember & str same TAG/TYPE diff OFFSET)\n");
    }

}
int main(){

    long double  work[6] = {10,20,30,40,50,60};
    long double  *workp;

    workp = work;
    strdata1 = (DATA1 **)&workp;
    strdata2 = (DATA2 **)&workp;
    strdata  = (STRDATA **)&workp;
    strintdata = (DATAint **)&workp;
    struintdata = (DATAuint **)&workp;
    strlongdata = (DATAlong **)&workp;
    strulongdata = (DATAulong **)&workp;
    strshortdata = (DATAshort **)&workp;
    strushortdata = (DATAushort **)&workp;
    strfloatdata = (DATAfloat **)&workp;
    strdoubledata = (DATAdouble **)&workp;
    strldoubledata = (DATAldouble **)&workp;
    strchardata = (DATAchar **)&workp;
    struchardata = (DATAuchar **)&workp;
    strschardata = (DATAschar **)&workp;

    sub();

}
