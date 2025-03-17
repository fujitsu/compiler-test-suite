#include <string.h>
#include <stdio.h>
typedef struct data{
    int  intdata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->intdata = 10;
    *intp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *intp == 5){
        printf("memalias OK(int & int)\n");
    } else {
        printf("not memalias(int & int)\n");
    }

    strdata->intdata = 10;
    *uintp = 5;
    strdata->intdata = strdata->intdata + 3;

    printf("not memalias(int & unsigned int)\n");

    strdata->intdata = 10;
    *longp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *longp == 5){
        printf("memalias OK(int & long)\n");
    } else {
        printf("not memalias(int & long)\n");
    }

    strdata->intdata = 10;
    *ulongp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *ulongp == 5){
        printf("memalias OK(int & unsigned long)\n");
    } else {
        printf("not memalias(int & unsigned long)\n");
    }

    strdata->intdata = 10;
    *shortp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *shortp == 5){
        printf("memalias OK(int & short)\n");
    } else {
        printf("not memalias(int & short)\n");
    }

    strdata->intdata = 10;
    *ushortp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *ushortp == 5){
        printf("memalias OK(int & unsigned short)\n");
    } else {
        printf("not memalias(int & unsigned short)\n");
    }

    strdata->intdata = 10;
    *floatp = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *floatp == 5){
        printf("memalias OK(int & float)\n");
    } else {
        printf("not memalias(int & float)\n");
    }

    strdata->intdata = 10;
    *doublep = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *doublep == 5){
        printf("memalias OK(int & double)\n");
    } else {
        printf("not memalias(int & double)\n");
    }

    strdata->intdata = 10;
    *ldoublep = 5;
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && *ldoublep == 5){
        printf("memalias OK(int & long double)\n");
    } else {
        printf("not memalias(int & long double)\n");
    }

    strdata->intdata = 10;
    strcpy(charp,"cd");
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(int & char)\n");
    } else {
        printf("not memalias(int & char)\n");
    }

    strdata->intdata = 10;
    *ucharp = 5;
    strdata->intdata = strdata->intdata + 3;

    printf("not memalias(int & unsigned char)\n");

    strdata->intdata = 10;
    strcpy(scharp,"cd");
    strdata->intdata = strdata->intdata + 3;

    if (strdata->intdata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(int & signed char)\n");
    } else {
        printf("not memalias(int & signed char)\n");
    }

}
int main(){
    long double work[3] = {10.0,20.0,30.0};

    DATA           *strdata;
    int            *intp;
    unsigned int   *uintp;
    long           *longp;
    unsigned long  *ulongp;
    short          *shortp;
    unsigned short *ushortp;
    float          *floatp;
    double         *doublep;
    long double    *ldoublep;
    char           *charp;
    unsigned char  *ucharp;
    signed char    *scharp;

    strdata = (DATA *)work;
    intp = (int *)work;
    uintp = (unsigned int *)work;
    longp = (long *)work;
    ulongp = (unsigned long *)work;
    shortp = (short *)work;
    ushortp = (unsigned short *)work;
    floatp = (float *)work;
    doublep = (double *)work;
    ldoublep = (long double *)work;
    charp = (char *)work;
    ucharp = (unsigned char *)work;
    scharp = (signed char *)work;

    sub(strdata, intp, uintp, shortp, ushortp, longp, ulongp,
        floatp, doublep, ldoublep, charp, ucharp, scharp);
}
