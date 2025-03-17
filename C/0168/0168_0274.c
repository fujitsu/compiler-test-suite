#include <string.h>
#include <stdio.h>
typedef struct data{
    long double  ldoubledata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->ldoubledata = 10;
    *intp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *intp == 5){
        printf("memalias OK(long double & int)\n");
    } else {
        printf("not memalias(long double & int)\n");
    }

    strdata->ldoubledata = 10;
    *uintp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *uintp == 5){
        printf("memalias OK(long double & unsigned int)\n");
    } else {
        printf("not memalias(long double & unsigned int)\n");
    }

    strdata->ldoubledata = 10;
    *longp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *longp == 5){
        printf("memalias OK(long double & long)\n");
    } else {
        printf("not memalias(long double & long)\n");
    }

    strdata->ldoubledata = 10;
    *ulongp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *ulongp == 5){
        printf("memalias OK(long double & unsigned long)\n");
    } else {
        printf("not memalias(long double & unsigned long)\n");
    }

    strdata->ldoubledata = 10;
    *shortp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *shortp == 5){
        printf("memalias OK(long double & short)\n");
    } else {
        printf("not memalias(long double & short)\n");
    }

    strdata->ldoubledata = 10;
    *ushortp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *ushortp == 5){
        printf("memalias OK(long double & unsigned short)\n");
    } else {
        printf("not memalias(long double & unsigned short)\n");
    }

    strdata->ldoubledata = 10;
    *floatp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *floatp == 5){
        printf("memalias OK(long double & float)\n");
    } else {
        printf("not memalias(long double & float)\n");
    }

    strdata->ldoubledata = 10;
    *doublep = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *doublep == 5){
        printf("memalias OK(long double & double)\n");
    } else {
        printf("not memalias(long double & double)\n");
    }

    strdata->ldoubledata = 10;
    *ldoublep = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && *ldoublep == 5){
        printf("memalias OK(long double & long double)\n");
    } else {
        printf("not memalias(long double & long double)\n");
    }

    strdata->ldoubledata = 10;
    strcpy(charp,"cd");
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(long double & char)\n");
    } else {
        printf("not memalias(long double & char)\n");
    }

    strdata->ldoubledata = 10;
    *ucharp = 5;
    strdata->ldoubledata = strdata->ldoubledata + 3;

    printf("not memalias(long double & unsigned char)\n");

    strdata->ldoubledata = 10;
    strcpy(scharp,"cd");
    strdata->ldoubledata = strdata->ldoubledata + 3;

    if (strdata->ldoubledata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(long double & signed char)\n");
    } else {
        printf("not memalias(long double & signed char)\n");
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
