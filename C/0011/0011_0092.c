#include <string.h>
#include  <stdio.h>

struct tag1 {
   char     **t1_po1[2];
};
struct tag2 {
   char        t2_ch1;
   char        t2_ch2[4];
   short int   t2_si1;
   long int    t2_li1;
   struct tag1 t2_st1[2];
   char       *t2_po1;
};
char       ch1e = 'c';
char       ch2e[] = "123";
short int  si1e = 987;
long int   li1e = 12345;
char      *po1e = "abcdef";
long int  *po2e = &li1e;
char      *po3e = ch2e;
char      *po4e[] = { "abc","bcd","cde","def" };
struct tag2
   st1e = { '*', "111", 246, 492,
              { {&po4e[0], &po4e[1]},
                  {&po4e[2], &po4e[3]} } ,"999" };
static char       ch1s = 'c';
static char       ch2s[] = "123";
static short int  si1s = 987;
static long int   li1s = 12345;
static char      *po1s = "abcdef";
static long int  *po2s = &li1s;
static char      *po3s = ch2s;
static char      *po4s[] = { "abc","bcd","cde","def" };
static struct tag2
          st1s = { '*', "111", 246, 492,
                    { {&po4e[0], &po4e[1]},
                        {&po4e[2], &po4e[3]} }, "999"};
int main()
{
    char       ch1a;
    char       ch2a[4];
    short int  si1a;
    long int   li1a;
    char      *po1a;
    long int  *po2a;
    char      *po3a;
    char      *po4a[4];
    static struct tag2
               st1a;

    printf("---- start ---- \n");
    ch1a = 'c';
    strcpy(ch2a, "123");
    si1a = 987;
    li1a = 12345;
    po1a = "abcdef";
    po2a = &li1a;
    po3a = ch2a;
    po4a[0] = "abc";po4a[1] = "bcd";
    po4a[2] = "cde";po4a[3] = "def";
    st1a.t2_ch1 = '*';
    strcpy(st1a.t2_ch2, "111");
    st1a.t2_si1 = 246;
    st1a.t2_li1 = 492;
    st1a.t2_st1[0].t1_po1[0] = &po4e[0];
    st1a.t2_st1[0].t1_po1[1] = &po4e[1];
    st1a.t2_st1[1].t1_po1[0] = &po4e[2];
    st1a.t2_st1[1].t1_po1[1] = &po4e[3];
    st1a.t2_po1 = "999";

    if ( (memcmp(&ch1e,&ch1s, 1)==0 && memcmp(&ch1s,&ch1a, 1)==0) &&
         (memcmp(ch2e ,ch2s , 4)==0 && memcmp(ch2s ,ch2a , 4)==0) &&
         (memcmp(&si1e,&si1s, 2)==0 && memcmp(&si1s,&si1a, 2)==0) &&
         (memcmp(&li1e,&li1s, 4)==0 && memcmp(&li1s,&li1a, 4)==0) &&
         (memcmp(po1e ,po1s , 7)==0 && memcmp(po1s ,po1a , 7)==0) &&
         (memcmp(po2e ,po2s , 4)==0 && memcmp(po2s ,po2a , 4)==0) &&
         (memcmp(po3e ,po3s , 4)==0 && memcmp(po3s ,po3a , 4)==0) &&
         (memcmp(po4e[0] ,po4s[0] , 4)==0 &&
                          memcmp(po4s[0] ,po4a[0] , 4)==0 &&
          memcmp(po4e[1] ,po4s[1] , 4)==0 &&
                          memcmp(po4s[1] ,po4a[1] , 4)==0 &&
          memcmp(po4e[2] ,po4s[2] , 4)==0 &&
                          memcmp(po4s[2] ,po4a[2] , 4)==0 &&
          memcmp(po4e[3] ,po4s[3] , 4)==0 &&
                          memcmp(po4s[3] ,po4a[3] , 4)==0   ) &&

#if defined(__x86_64__) || defined(__aarch64__)
         (memcmp(&st1e ,&st1s ,sizeof(st1e)-8)==0 &&
                         memcmp(&st1s ,&st1a ,sizeof(st1e)-8)==0) &&
#else
         (memcmp(&st1e ,&st1s ,sizeof(st1e)-4)==0 &&
                         memcmp(&st1s ,&st1a ,sizeof(st1e)-4)==0) &&
#endif
         (memcmp(st1e.t2_po1,st1s.t2_po1 ,4)==0 &&
                           memcmp(st1s.t2_po1,st1a.t2_po1 ,4)==0) )
        printf ("   ***  ok  *** \n");
    else
        printf ("   ???  ng  ??? \n");

    printf("----  end  ---- \n");
}
