#include <string.h>
#include <stdio.h>

#if defined(INT64)
#define int __int32
#endif

int func(p)
     char *p ;
{
  strcpy(p,"abc");
}
int main() {
  union {
    char		a[8] ;
    unsigned int	i[2] ;
  } string ;

  printf(" start\n") ;
  strcpy(string.a,"klm") ;	
  strcpy(&string.a[3],"nopq") ;
  printf("Initial value : %s\n",string.a) ;
#if !defined(__sparc) || defined(LITTLE_ENDIAN)
  if (string.i[0] != 0x6e6d6c6b || string.i[1] != 0x71706f) {
    printf("little-endian: ng %x %x\n",string.i[0],string.i[1]);
  }
#else
  if (string.i[0] != 0x6b6c6d6e || string.i[1] != 0x6f707100) {
    printf("big-endian: ng %x %x\n",string.i[0],string.i[1]);
  }
#endif

  func(&string.a[1]) ;
#if !defined(__sparc) || defined(LITTLE_ENDIAN)
  if (string.i[0] != 0x6362616b || string.i[1] != 0x717000) {
    printf("little-endian: ng %x %x\n",string.i[0],string.i[1]);
  }
#else
  if (string.i[0] != 0x6b616263 || string.i[1] != 0x707100) {
    printf("big-endian: ng %x %x\n",string.i[0],string.i[1]);
  }
#endif
  printf("strcpy optimization test ") ;
  if (memcmp(string.a,"kabc\0pq\0",8)) printf(" NG \n") ;
  else	printf(" OK \n") ;
}
