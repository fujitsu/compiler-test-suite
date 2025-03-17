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
    char       chardata2;
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
    char       chardata2;
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




    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata1)->chardata2),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata1)->chardata2),"cd") == 0)){
        printf("memalias OK(char same TAG/TYPE diff OFFSET)\n");
    }else{
        printf("not memalias(char same TAG/TYPE diff OFFSET)\n");
    }




    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->intdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->intdata == 5)){
        printf("memalias OK(char & int same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & int same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->uintdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->uintdata == 5)){
        printf("memalias OK(char & uint same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & uint same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->longdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->longdata == 5)){
        printf("memalias OK(char & long same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & long same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->ulongdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->ulongdata == 5)){
        printf("memalias OK(char & ulong same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ulong same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->shortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->shortdata == 5)){
        printf("memalias OK(char & short same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & short same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->ushortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->ushortdata == 5)){
        printf("memalias OK(char & ushort same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ushort same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->floatdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->floatdata == 5)){
        printf("memalias OK(char & float same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & float same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->doubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->doubledata == 5)){
        printf("memalias OK(char & double same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & double same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->ldoubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->ldoubledata == 5)){
        printf("memalias OK(char & ldouble same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ldouble same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata1)->uchardata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata1)->uchardata == 5)){
        printf("memalias OK(char & uchar same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & uchar same TAG diff TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata1)->schardata),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata1)->schardata),"cd") == 0)){
        printf("memalias OK(char & schar same TAG diff TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & schar same TAG diff TYPE/OFFSET)\n");
    }





    strcpy(&((*strdata1)->chardata2),"ab");
    strcpy(&((*strdata2)->chardata2),"cd");
    strcat(&((*strdata1)->chardata2),"cd");

    if((strcmp(&((*strdata1)->chardata2),"abcd") == 0) && (strcmp(&((*strdata2)->chardata2),"cd") == 0)){
        printf("memalias OK(char diff TAG same TYPE/OFFSET)\n");
    }else{
        printf("not memalias(char diff TAG same TYPE/OFFSET)\n");
    }




    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata2)->chardata2),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata2)->chardata2),"cd") == 0)){
        printf("memalias OK(char diff TAG/OFFSET same TYPE)\n");
    }else{
        printf("not memalias(char diff TAG/OFFSET same TYPE)\n");
    }




    strcpy(&((*strdata1)->chardata),"ab");
    (*strintdata)->intdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strintdata)->intdata == 5)){
        printf("memalias OK(char & int diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & int diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*struintdata)->uintdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*struintdata)->uintdata == 5)){
        printf("memalias OK(char & uint diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & uint diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strlongdata)->longdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strlongdata)->longdata == 5)){
        printf("memalias OK(char & long diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & long diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strulongdata)->ulongdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strulongdata)->ulongdata == 5)){
        printf("memalias OK(char & ulong diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & ulong diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strshortdata)->shortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strshortdata)->shortdata == 5)){
        printf("memalias OK(char & short diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & short diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strushortdata)->ushortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strushortdata)->ushortdata == 5)){
        printf("memalias OK(char & ushort diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & ushort diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strfloatdata)->floatdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strfloatdata)->floatdata == 5)){
        printf("memalias OK(char & float diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & float diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdoubledata)->doubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdoubledata)->doubledata == 5)){
        printf("memalias OK(char & double diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & double diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strldoubledata)->ldoubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strldoubledata)->ldoubledata == 5)){
        printf("memalias OK(char & ldouble diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & ldouble diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*struchardata)->uchardata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*struchardata)->uchardata == 5)){
        printf("memalias OK(char & uchar diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & uchar diff TAG/TYPE same OFFSET)\n");
    }

    strcpy(&((*strchardata)->chardata),"ab");
    strcpy(&((*strschardata)->schardata),"cd");
    strcat(&((*strchardata)->chardata),"cd");

    if((strcmp(&((*strchardata)->chardata),"abcd") == 0) && (strcmp(&((*strschardata)->schardata),"cd") == 0)){
        printf("memalias OK(char & schar diff TAG/TYPE same OFFSET)\n");
   }else{
        printf("not memalias(char & schar diff TAG/TYPE same OFFSET)\n");
    }




    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->intdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->intdata == 5)){
        printf("memalias OK(char & int diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & int diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->uintdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->uintdata == 5)){
        printf("memalias OK(char & uint diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & uint diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->longdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->longdata == 5)){
        printf("memalias OK(char & long diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & long diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->ulongdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->ulongdata == 5)){
        printf("memalias OK(char & ulong diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ulong diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->shortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->shortdata == 5)){
        printf("memalias OK(char & short diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & short diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->ushortdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->ushortdata == 5)){
        printf("memalias OK(char & ushort diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ushort diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->floatdata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->floatdata == 5)){
        printf("memalias OK(char & float diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & float diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->doubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->doubledata == 5)){
        printf("memalias OK(char & double diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & double diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->ldoubledata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->ldoubledata == 5)){
        printf("memalias OK(char & ldouble diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & ldouble diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    (*strdata2)->uchardata = 5;
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && ((*strdata2)->uchardata == 5)){
        printf("memalias OK(char & uchar diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & uchar diff TAG/TYPE/OFFSET)\n");
    }

    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata2)->schardata),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata2)->schardata),"cd") == 0)){
        printf("memalias OK(char & schar diff TAG/TYPE/OFFSET)\n");
   }else{
        printf("not memalias(char & schar diff TAG/TYPE/OFFSET)\n");
    }




    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata)->data1data.chardata),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata)->data1data.chardata),"cd") == 0)){
        printf("memalias OK(char strmember & str same TAG/TYPE/OFFSET)\n");
    }else{
        printf("not memalias(char strmember & str same TAG/TYPE/OFFSET)\n");
    }



    strcpy(&((*strdata1)->chardata),"ab");
    strcpy(&((*strdata)->data1data.chardata2),"cd");
    strcat(&((*strdata1)->chardata),"cd");

    if((strcmp(&((*strdata1)->chardata),"abcd") == 0) && (strcmp(&((*strdata)->data1data.chardata2),"cd") == 0)){
        printf("memalias OK(char strmember & str same TAG/TYPE diff OFFSET)\n");
    }else{
        printf("not memalias(char strmember & str same TAG/TYPE diff OFFSET)\n");
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
