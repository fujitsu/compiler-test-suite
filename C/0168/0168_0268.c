#include <string.h>
#include <stdio.h>
typedef struct data{
    double  doubledata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->doubledata = 10;
    *intp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *intp == 5){
        printf("memalias OK(double & int)\n");
    } else {
        printf("not memalias(double & int)\n");
    }

    strdata->doubledata = 10;
    *uintp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *uintp == 5){
        printf("memalias OK(double & unsigned int)\n");
    } else {
        printf("not memalias(double & unsigned int)\n");
    }

    strdata->doubledata = 10;
    *longp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *longp == 5){
        printf("memalias OK(double & long)\n");
    } else {
        printf("not memalias(double & long)\n");
    }

    strdata->doubledata = 10;
    *ulongp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *ulongp == 5){
        printf("memalias OK(double & unsigned long)\n");
    } else {
        printf("not memalias(double & unsigned long)\n");
    }

    strdata->doubledata = 10;
    *shortp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *shortp == 5){
        printf("memalias OK(double & short)\n");
    } else {
        printf("not memalias(double & short)\n");
    }

    strdata->doubledata = 10;
    *ushortp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *ushortp == 5){
        printf("memalias OK(double & unsigned short)\n");
    } else {
        printf("not memalias(double & unsigned short)\n");
    }

    strdata->doubledata = 10;
    *floatp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *floatp == 5){
        printf("memalias OK(double & float)\n");
    } else {
        printf("not memalias(double & float)\n");
    }

    strdata->doubledata = 10;
    *doublep = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *doublep == 5){
        printf("memalias OK(double & double)\n");
    } else {
        printf("not memalias(double & double)\n");
    }

    strdata->doubledata = 10;
    *ldoublep = 5;
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && *ldoublep == 5){
        printf("memalias OK(double & long double)\n");
    } else {
        printf("not memalias(double & long double)\n");
    }

    strdata->doubledata = 10;
    strcpy(charp,"cd");
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(double & char)\n");
    } else {
        printf("not memalias(double & char)\n");
    }

    strdata->doubledata = 10;
    *ucharp = 5;
    strdata->doubledata = strdata->doubledata + 3;

    printf("not memalias(double & unsigned char)\n");

    strdata->doubledata = 10;
    strcpy(scharp,"cd");
    strdata->doubledata = strdata->doubledata + 3;

    if (strdata->doubledata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(double & signed char)\n");
    } else {
        printf("not memalias(double & signed char)\n");
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
