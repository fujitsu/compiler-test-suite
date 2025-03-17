#include <string.h>
#include <stdio.h>
typedef struct data{
    unsigned char  uchardata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strdata->uchardata = 10;
    *intp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & int)\n");

    strdata->uchardata = 10;
    *uintp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & unsigned int)\n");

    strdata->uchardata = 10;
    *longp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & long)\n");

    strdata->uchardata = 10;
    *ulongp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & unsigned long)\n");

    strdata->uchardata = 10;
    *shortp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & short)\n");

    strdata->uchardata = 10;
    *ushortp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & unsigned short)\n");

    strdata->uchardata = 10;
    *floatp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & float)\n");

    strdata->uchardata = 10;
    *doublep = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & double)\n");

    strdata->uchardata = 10;
    *ldoublep = 5;
    strdata->uchardata = strdata->uchardata + 3;

    printf("not memalias(unsigned char & long double)\n");

    strdata->uchardata = 10;
    strcpy(charp,"cd");
    strdata->uchardata = strdata->uchardata + 3;

    if (strdata->uchardata == 13 && strcmp(charp,"cd") == 0){
        printf("memalias OK(unsigned char & char)\n");
    } else {
        printf("not memalias(unsigned char & char)\n");
    }

    strdata->uchardata = 10;
    *ucharp = 5;
    strdata->uchardata = strdata->uchardata + 3;

    if (strdata->uchardata == 13 && *ucharp == 5){
        printf("memalias OK(unsigned char & unsigned char)\n");
    } else {
        printf("not memalias(unsigned char & unsigned char)\n");
    }

    strdata->uchardata = 10;
    strcpy(scharp,"cd");
    strdata->uchardata = strdata->uchardata + 3;

    if (strdata->uchardata == 13 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(unsigned char & signed char)\n");
    } else {
        printf("not memalias(unsigned char & signed char)\n");
    }

}
int main(){
    long double work = 10.0;

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

    strdata = (DATA *)&work;
    intp = (int *)&work;
    uintp = (unsigned int *)&work;
    longp = (long *)&work;
    ulongp = (unsigned long *)&work;
    shortp = (short *)&work;
    ushortp = (unsigned short *)&work;
    floatp = (float *)&work;
    doublep = (double *)&work;
    ldoublep = (long double *)&work;
    charp = (char *)&work;
    ucharp = (unsigned char *)&work;
    scharp = (signed char *)&work;

    sub(strdata, intp, uintp, shortp, ushortp, longp, ulongp,
        floatp, doublep, ldoublep, charp, ucharp, scharp);
}
