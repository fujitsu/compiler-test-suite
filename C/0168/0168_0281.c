#include <string.h>
#include <stdio.h>
typedef struct data{
    unsigned int  uintdata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->uintdata = 10;
    *intp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    printf("not memalias(unsigned int & int)\n");

    strdata->uintdata = 10;
    *uintp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *uintp == 5){
        printf("memalias OK(unsigned int & unsigned int)\n");
    } else {
        printf("not memalias(unsigned int & unsigned int)\n");
    }

    strdata->uintdata = 10;
    *longp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *longp == 5){
        printf("memalias OK(unsigned int & long)\n");
    } else {
        printf("not memalias(unsigned int & long)\n");
    }

    strdata->uintdata = 10;
    *ulongp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *ulongp == 5){
        printf("memalias OK(unsigned int & unsigned long)\n");
    } else {
        printf("not memalias(unsigned int & unsigned long)\n");
    }

    strdata->uintdata = 10;
    *shortp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *shortp == 5){
        printf("memalias OK(unsigned int & short)\n");
    } else {
        printf("not memalias(unsigned int & short)\n");
    }

    strdata->uintdata = 10;
    *ushortp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *ushortp == 5){
        printf("memalias OK(unsigned int & unsigned short)\n");
    } else {
        printf("not memalias(unsigned int & unsigned short)\n");
    }

    strdata->uintdata = 10;
    *floatp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *floatp == 5){
        printf("memalias OK(unsigned int & float)\n");
    } else {
        printf("not memalias(unsigned int & float)\n");
    }

    strdata->uintdata = 10;
    *doublep = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *doublep == 5){
        printf("memalias OK(unsigned int & double)\n");
    } else {
        printf("not memalias(unsigned int & double)\n");
    }

    strdata->uintdata = 10;
    *ldoublep = 5;
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && *ldoublep == 5){
        printf("memalias OK(unsigned int & long double)\n");
    } else {
        printf("not memalias(unsigned int & long double)\n");
    }

    strdata->uintdata = 10;
    strcpy(charp,"cd");
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(unsigned int & char)\n");
    } else {
        printf("not memalias(unsigned int & char)\n");
    }

    strdata->uintdata = 10;
    *ucharp = 5;
    strdata->uintdata = strdata->uintdata + 3;

    printf("not memalias(unsigned int & unsigned char)\n");

    strdata->uintdata = 10;
    strcpy(scharp,"cd");
    strdata->uintdata = strdata->uintdata + 3;

    if (strdata->uintdata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(unsigned int & signed char)\n");
    } else {
        printf("not memalias(unsigned int & signed char)\n");
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
