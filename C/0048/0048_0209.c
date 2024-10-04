#include <stdio.h>
#include <string.h>
 
struct stag {
               signed int    inta[5];
               unsigned int  intb[5][5];
               char          *chaa;
               char          chab[5][5];
            }exst,*exstp,*exsth[2];
 
union  utag {
               signed int    inta[5];
               unsigned int  intb[5][5];
               char          *chaa;
               char          chab[5][5];
               struct stag   sta[2];
            } exun, *exunp, exunh[2];
 
int         exin, *exinp, exinh[2];
char        exch, *exchp, exchh[2];
void              *exvop;
int main(){
 
    int         in, *inp, inh[2];
    char        ch, *chp, chh[2];
    struct stag st, *stp, sth[2];
    union  utag un, *unp, unh[2];
    void            *vop;
 
    printf("-----  TEST START -----\n");
 
    in = 1;
    stp = &exst;
    stp->inta[in] = 4;
    memset(&(exst.intb[in][in]),
             stp->inta[in]     ,
             (unsigned long int)(stp->inta[in]));
    if (exst.intb[in][in] == 0x04040404)
            printf("*** INLFUNC2 TEST-01 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-01 NG +++\n");
 
    chh[in] = 2;
    unp = &exun;
    unp->sta[in].inta[chh[in]] = 4;
    memcpy(&(un.intb[stp->inta[in]][stp->inta[in]]),
           &(exst.intb[in][in]),
           (unsigned long int)(unp->sta[in].inta[chh[in]]));
    if (un.intb[stp->inta[in]][stp->inta[in]]
        == 0x04040404 &&
        exst.intb[in][in] == 0x04040404)
            printf("*** INLFUNC2 TEST-02 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-02 NG +++\n");
 
    exchh[0] = 'a'; exchh[1] = 0x00;
    strcpy(sth[in].chab[in],exchh);
    if (!memcmp(exchh, sth[in].chab[in], chh[in]))
            printf("*** INLFUNC2 TEST-03 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-03 NG +++\n");
 
    exunp = &un;
    un.chaa = "apple";
    exunh[1].sta[1].chaa = "apple";
    sth[in].intb[in][in] = 5;
    if ( strlen(exunh[in].sta[in].chaa) == 5)
            printf("*** INLFUNC2 TEST-04 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-04 NG +++\n");
 
    if (!memcmp(exunh[in].sta[in].chaa,
                un.chaa,
                sth[in].intb[in][in]))
            printf("*** INLFUNC2 TEST-05 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-05 NG +++\n");
 
    if (!strcmp(exunh[in].sta[in].chaa,
                un.chaa))
            printf("*** INLFUNC2 TEST-06 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-06 NG +++\n");
 
    exchh[1] = 'p';
    chp = (char *)memchr(exunh[in].sta[in].chaa,
                         (int)exchh[1],
                         sth[in].intb[in][in]);
    if (*chp == exchh[1])
            printf("*** INLFUNC2 TEST-07 OK ***\n");
    else
            printf("+++ INLFUNC2 TEST-07 NG +++\n");
 
 
    printf("-----  TEST ENDED -----\n");
}
