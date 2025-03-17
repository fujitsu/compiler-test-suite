#include <string.h>
#include <stdio.h>
typedef struct data{
    float  floatdata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->floatdata = 10;
    *intp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *intp == 5){
        printf("memalias OK(float & int)\n");
    } else {
        printf("not memalias(float & int)\n");
    }

    strdata->floatdata = 10;
    *uintp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *uintp == 5){
        printf("memalias OK(float & unsigned int)\n");
    } else {
        printf("not memalias(float & unsigned int)\n");
    }

    strdata->floatdata = 10;
    *longp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *longp == 5){
        printf("memalias OK(float & long)\n");
    } else {
        printf("not memalias(float & long)\n");
    }

    strdata->floatdata = 10;
    *ulongp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *ulongp == 5){
        printf("memalias OK(float & unsigned long)\n");
    } else {
        printf("not memalias(float & unsigned long)\n");
    }

    strdata->floatdata = 10;
    *shortp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *shortp == 5){
        printf("memalias OK(float & short)\n");
    } else {
        printf("not memalias(float & short)\n");
    }

    strdata->floatdata = 10;
    *ushortp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *ushortp == 5){
        printf("memalias OK(float & unsigned short)\n");
    } else {
        printf("not memalias(float & unsigned short)\n");
    }

    strdata->floatdata = 10;
    *floatp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *floatp == 5){
        printf("memalias OK(float & float)\n");
    } else {
        printf("not memalias(float & float)\n");
    }

    strdata->floatdata = 10;
    *doublep = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *doublep == 5){
        printf("memalias OK(float & double)\n");
    } else {
        printf("not memalias(float & double)\n");
    }

    strdata->floatdata = 10;
    *ldoublep = 5;
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && *ldoublep == 5){
        printf("memalias OK(float & long double)\n");
    } else {
        printf("not memalias(float & long double)\n");
    }

    strdata->floatdata = 10;
    strcpy(charp,"cd");
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(float & char)\n");
    } else {
        printf("not memalias(float & char)\n");
    }

    strdata->floatdata = 10;
    *ucharp = 5;
    strdata->floatdata = strdata->floatdata + 3;

    printf("not memalias(float & unsigned char)\n");

    strdata->floatdata = 10;
    strcpy(scharp,"cd");
    strdata->floatdata = strdata->floatdata + 3;

    if (strdata->floatdata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(float & signed char)\n");
    } else {
        printf("not memalias(float & signed char)\n");
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
