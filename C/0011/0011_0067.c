#include  <stdio.h>

struct t255 {
              char c[255]                                       ;
            }                                                    ;
struct t256 {
              char c[256]                                       ;
            }                                                    ;

struct t255 f255( int i,char c )                                  ;
struct t256 f256( int i,char c )                                  ;
int main()
{
  struct t255 s255                                                ;
  struct t256 s256                                                ;

  printf("********** TEST STARTED **********\n")      ;

  /***************************************************************/
  /*                                                               */

  s255 = f255(1,'p')                                              ;
  if (s255.c[1] == 1)
    printf("********** 01 OK **********\n")         ;
  else
    {
    printf("********** 01 NG **********\n")         ;
    printf("   <<<%x>>> \n",s255.c[1]) ;
    }

  s255 = f255(2,'m')                                              ;
  if (s255.c[2] == 2)
    printf("********** 02 OK **********\n")         ;
  else
    {
    printf("********** 02 NG **********\n")         ;
    printf("   <<<%x>>> \n",s255.c[2]) ;
    }

  s255 = f255(3,'s')                                              ;
  if (s255.c[3] == 3)
    printf("********** 03 OK **********\n")         ;
  else
    {
    printf("********** 03 NG **********\n")         ;
    printf("   <<<%x>>> \n",s255.c[3]) ;
    }

  s255 = f255(4,'a')                                              ;
  if (s255.c[4] == 4)
    printf("********** 04 OK **********\n")         ;
  else
    {
    printf("********** 04 NG **********\n")         ;
    printf("   <<<%x>>> \n",s255.c[4]) ;
    }

  /*                                                             */
  /***************************************************************/

  /***************************************************************/
  /*                                                               */

  s256 = f256(5,'p')                                              ;
  if (s256.c[5] == 5)
    printf("********** 05 OK **********\n")         ;
  else
    {
    printf("********** 05 NG **********\n")         ;
    printf("   <<<%x>>> \n",s256.c[5]) ;
    }

  s256 = f256(6,'m')                                              ;
  if (s256.c[6] == 6)
    printf("********** 06 OK **********\n")         ;
  else
    {
    printf("********** 06 NG **********\n")         ;
    printf("   <<<%x>>> \n",s256.c[6]) ;
    }

  s256 = f256(7,'s')                                              ;
  if (s256.c[7] == 7)
    printf("********** 07 OK **********\n")         ;
  else
    {
    printf("********** 07 NG **********\n")         ;
    printf("   <<<%x>>> \n",s256.c[7]) ;
    }

  s256 = f256(8,'a')                                              ;
  if (s256.c[8] == 8)
    printf("********** 08 OK **********\n")         ;
  else
    {
    printf("********** 08 NG **********\n")         ;
    printf("   <<<%x>>> \n",s256.c[8]) ;
    }

  /*                                                             */
  /***************************************************************/


  printf("********** TEST ENDED **********\n")         ;

}
struct t255 f255(int i,char c)
{
  struct t255 s,*p,m[10]                                        ;
  struct t255_m{
                 struct t255 t255_m[10]                         ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 255 ; s.c[j] = m[7].c[j] =
                                  sm.t255_m[7].c[j] = i,j++)  ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->t255_m[7]                                     ;
    default:
      return s                                                    ;
  }
}

struct t256 f256(int i,char c)
{
  struct t256 s,*p,m[10]                                        ;
  struct t256_m{
                 struct t256 t256_m[10]                         ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 256 ; s.c[j] = m[7].c[j] =
                                  sm.t256_m[7].c[j] = i,j++)  ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->t256_m[7]                                     ;
    default:
      return s                                                    ;
  }
}

