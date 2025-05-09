#include <stdio.h>
#include <string.h>
typedef struct data{
    signed char  schardata;
}DATA;

DATA            *strdata;
int             *intp;
unsigned int    *uintp;
long            *longp;
unsigned long   *ulongp;
short           *shortp;
unsigned short  *ushortp;
float           *floatp;
double          *doublep;
long double     *ldoublep;
char            *charp;
unsigned char   *ucharp;
signed char     *scharp;

void sub(){

    strcpy(&(strdata->schardata),"ab");
    *intp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *intp == 5){
        printf("memalias OK(signed char & int)\n");
    } else {
        printf("not memalias(signed char & int)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *uintp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *uintp == 5){
        printf("memalias OK(signed char & unsigned int)\n");
    } else {
        printf("not memalias(signed char & unsigned int)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *longp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *longp == 5){
        printf("memalias OK(signed char & long)\n");
    } else {
        printf("not memalias(signed char & long)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *ulongp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *ulongp == 5){
        printf("memalias OK(signed char & unsigned long)\n");
    } else {
        printf("not memalias(signed char & unsigned long)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *shortp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *shortp == 5){
        printf("memalias OK(signed char & short)\n");
    } else {
        printf("not memalias(signed char & short)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *ushortp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *ushortp == 5){
        printf("memalias OK(signed char & unsigned short)\n");
    } else {
        printf("not memalias(signed char & unsigned short)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *floatp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *floatp == 5){
        printf("memalias OK(signed char & float)\n");
    } else {
        printf("not memalias(signed char & float)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *doublep = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *doublep == 5){
        printf("memalias OK(signed char & double)\n");
    } else {
        printf("not memalias(signed char & double)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *ldoublep = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *ldoublep == 5){
        printf("memalias OK(signed char & long double)\n");
    } else {
        printf("not memalias(signed char & long double)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    strcpy(charp,"cd");
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && strcmp(charp,"cd") == 0){
        printf("memalias OK(signed char & char)\n");
    } else {
        printf("not memalias(signed char & char)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    *ucharp = 5;
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && *ucharp == 5){
        printf("memalias OK(signed char & unsigned char)\n");
    } else {
        printf("not memalias(signed char & unsigned char)\n");
    }

    strcpy(&(strdata->schardata),"ab");
    strcpy(scharp,"cd");
    strcat(&(strdata->schardata),"ab");

    if (strcmp(&(strdata->schardata),"abab") == 0 && strcmp(scharp,"cd") == 0){
        printf("memalias OK(signed char & signed char)\n");
    } else {
        printf("not memalias(signed char & signed char)\n");
    }

}
int main(){
    long double work[3] = {10.0,20.0,30.0};

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

    sub();
}
