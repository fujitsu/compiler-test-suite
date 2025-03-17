#include <stdio.h>
#include <string.h>
typedef struct data{
    char  chardata;
}DATA;

void sub(DATA *strdata, int *intp, unsigned int *uintp,
         short *shortp, unsigned short *ushortp,
         long *longp, unsigned long *ulongp,
         float *floatp, double *doublep,
         long double *ldoublep, char *charp, 
         unsigned char *ucharp, signed char *scharp){

    strcpy(&(strdata->chardata),"ab");
    *intp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *intp == 5){
        printf("memalias OK(char & int)\n");
    } else {
        printf("not memalias(char & int)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *uintp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *uintp == 5){
        printf("memalias OK(char & unsigned int)\n");
    } else {
        printf("not memalias(char & unsigned int)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *longp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *longp == 5){
        printf("memalias OK(char & long)\n");
    } else {
        printf("not memalias(char & long)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *ulongp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *ulongp == 5){
        printf("memalias OK(char & unsigned long)\n");
    } else {
        printf("not memalias(char & unsigned long)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *shortp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *shortp == 5){
        printf("memalias OK(char & short)\n");
    } else {
        printf("not memalias(char & short)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *ushortp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *ushortp == 5){
        printf("memalias OK(char & unsigned short)\n");
    } else {
        printf("not memalias(char & unsigned short)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *floatp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *floatp == 5){
        printf("memalias OK(char & float)\n");
    } else {
        printf("not memalias(char & float)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *doublep = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *doublep == 5){
        printf("memalias OK(char & double)\n");
    } else {
        printf("not memalias(char & double)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *ldoublep = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *ldoublep == 5){
        printf("memalias OK(char & long double)\n");
    } else {
        printf("not memalias(char & long double)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    strcpy(charp,"cd");
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && strcmp(charp,"cd") == 0){
        printf("memalias OK(char & char)\n");
    } else {
        printf("not memalias(char & char)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    *ucharp = 5;
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && *ucharp == 5){
        printf("memalias OK(char & unsigned char)\n");
    } else {
        printf("not memalias(char & unsigned char)\n");
    }

    strcpy(&(strdata->chardata),"ab");
    strcpy(scharp,"cd");
    strcat(&(strdata->chardata),"ab");

    if (strcmp(&(strdata->chardata),"abab") == 0 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(char & signed char)\n");
    } else {
        printf("not memalias(char & signed char)\n");
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
