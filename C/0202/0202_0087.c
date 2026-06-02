#include <stdio.h>
typedef unsigned long long INT64T;

struct T 
{
  INT64T mem64:64;
  INT64T mem63:63;
  INT64T mem62:63;
  INT64T mem61:61;
  INT64T mem60:60;
  INT64T mem59:59;
  INT64T mem58:58;
  INT64T mem57:57;
  INT64T mem56:56;
  INT64T mem55:55;
  INT64T mem54:54;
  INT64T mem53:53;
  INT64T mem52:53;
  INT64T mem51:51;
  INT64T mem50:50;
  INT64T mem49:49;
  INT64T mem48:48;
  INT64T mem47:47;
  INT64T mem46:46;
  INT64T mem45:45;
  INT64T mem44:44;
  INT64T mem43:43;
  INT64T mem42:43;
  INT64T mem41:41;
  INT64T mem40:40;
  INT64T mem39:39;
  INT64T mem38:38;
  INT64T mem37:37;
  INT64T mem36:36;
  INT64T mem35:35;
  INT64T mem34:34;
  INT64T mem33:33;
  INT64T mem32:32;
};

struct T str =
{
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
  0x80000000LL,
}, *ptr = &str;

int main()
{
  printf("long long bit field initialize check start\n");
  if (str.mem64 != 0x80000000LL) printf("str.mem64 check NG\n");
  if (str.mem63 != 0x80000000LL) printf("str.mem63 check NG\n");
  if (str.mem62 != 0x80000000LL) printf("str.mem62 check NG\n");
  if (str.mem61 != 0x80000000LL) printf("str.mem61 check NG\n");
  if (str.mem60 != 0x80000000LL) printf("str.mem60 check NG\n");
  if (str.mem59 != 0x80000000LL) printf("str.mem59 check NG\n");
  if (str.mem58 != 0x80000000LL) printf("str.mem58 check NG\n");
  if (str.mem57 != 0x80000000LL) printf("str.mem57 check NG\n");
  if (str.mem56 != 0x80000000LL) printf("str.mem56 check NG\n");
  if (str.mem55 != 0x80000000LL) printf("str.mem55 check NG\n");
  if (str.mem54 != 0x80000000LL) printf("str.mem54 check NG\n");
  if (str.mem53 != 0x80000000LL) printf("str.mem53 check NG\n");
  if (str.mem52 != 0x80000000LL) printf("str.mem52 check NG\n");
  if (str.mem51 != 0x80000000LL) printf("str.mem51 check NG\n");
  if (str.mem50 != 0x80000000LL) printf("str.mem50 check NG\n");
  if (str.mem49 != 0x80000000LL) printf("str.mem49 check NG\n");
  if (str.mem48 != 0x80000000LL) printf("str.mem48 check NG\n");
  if (str.mem47 != 0x80000000LL) printf("str.mem47 check NG\n");
  if (str.mem46 != 0x80000000LL) printf("str.mem46 check NG\n");
  if (str.mem45 != 0x80000000LL) printf("str.mem45 check NG\n");
  if (str.mem44 != 0x80000000LL) printf("str.mem44 check NG\n");
  if (str.mem43 != 0x80000000LL) printf("str.mem43 check NG\n");
  if (str.mem42 != 0x80000000LL) printf("str.mem42 check NG\n");
  if (str.mem41 != 0x80000000LL) printf("str.mem41 check NG\n");
  if (str.mem40 != 0x80000000LL) printf("str.mem40 check NG\n");
  if (str.mem39 != 0x80000000LL) printf("str.mem39 check NG\n");
  if (str.mem38 != 0x80000000LL) printf("str.mem38 check NG\n");
  if (str.mem37 != 0x80000000LL) printf("str.mem37 check NG\n");
  if (str.mem36 != 0x80000000LL) printf("str.mem36 check NG\n");
  if (str.mem35 != 0x80000000LL) printf("str.mem35 check NG\n");
  if (str.mem34 != 0x80000000LL) printf("str.mem34 check NG\n");
  if (str.mem33 != 0x80000000LL) printf("str.mem33 check NG\n");
  if (str.mem32 != 0x80000000LL) printf("str.mem32 check NG\n");
  if (ptr->mem64 != 0x80000000LL) printf("ptr->mem64 check NG\n");
  if (ptr->mem63 != 0x80000000LL) printf("ptr->mem63 check NG\n");
  if (ptr->mem62 != 0x80000000LL) printf("ptr->mem62 check NG\n");
  if (ptr->mem61 != 0x80000000LL) printf("ptr->mem61 check NG\n");
  if (ptr->mem60 != 0x80000000LL) printf("ptr->mem60 check NG\n");
  if (ptr->mem59 != 0x80000000LL) printf("ptr->mem59 check NG\n");
  if (ptr->mem58 != 0x80000000LL) printf("ptr->mem58 check NG\n");
  if (ptr->mem57 != 0x80000000LL) printf("ptr->mem57 check NG\n");
  if (ptr->mem56 != 0x80000000LL) printf("ptr->mem56 check NG\n");
  if (ptr->mem55 != 0x80000000LL) printf("ptr->mem55 check NG\n");
  if (ptr->mem54 != 0x80000000LL) printf("ptr->mem54 check NG\n");
  if (ptr->mem53 != 0x80000000LL) printf("ptr->mem53 check NG\n");
  if (ptr->mem52 != 0x80000000LL) printf("ptr->mem52 check NG\n");
  if (ptr->mem51 != 0x80000000LL) printf("ptr->mem51 check NG\n");
  if (ptr->mem50 != 0x80000000LL) printf("ptr->mem50 check NG\n");
  if (ptr->mem49 != 0x80000000LL) printf("ptr->mem49 check NG\n");
  if (ptr->mem48 != 0x80000000LL) printf("ptr->mem48 check NG\n");
  if (ptr->mem47 != 0x80000000LL) printf("ptr->mem47 check NG\n");
  if (ptr->mem46 != 0x80000000LL) printf("ptr->mem46 check NG\n");
  if (ptr->mem45 != 0x80000000LL) printf("ptr->mem45 check NG\n");
  if (ptr->mem44 != 0x80000000LL) printf("ptr->mem44 check NG\n");
  if (ptr->mem43 != 0x80000000LL) printf("ptr->mem43 check NG\n");
  if (ptr->mem42 != 0x80000000LL) printf("ptr->mem42 check NG\n");
  if (ptr->mem41 != 0x80000000LL) printf("ptr->mem41 check NG\n");
  if (ptr->mem40 != 0x80000000LL) printf("ptr->mem40 check NG\n");
  if (ptr->mem39 != 0x80000000LL) printf("ptr->mem39 check NG\n");
  if (ptr->mem38 != 0x80000000LL) printf("ptr->mem38 check NG\n");
  if (ptr->mem37 != 0x80000000LL) printf("ptr->mem37 check NG\n");
  if (ptr->mem36 != 0x80000000LL) printf("ptr->mem36 check NG\n");
  if (ptr->mem35 != 0x80000000LL) printf("ptr->mem35 check NG\n");
  if (ptr->mem34 != 0x80000000LL) printf("ptr->mem34 check NG\n");
  if (ptr->mem33 != 0x80000000LL) printf("ptr->mem33 check NG\n");
  if (ptr->mem32 != 0x80000000LL) printf("ptr->mem32 check NG\n");
  printf("long long bit field initialize check end\n");
  return 0;
} 
