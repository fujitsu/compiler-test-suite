#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed int v9 (unsigned int, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short);
extern void v11 (signed char, unsigned int);
extern void (*v12) (signed char, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned short, unsigned int, signed int);
extern unsigned short (*v16) (unsigned short, unsigned int, signed int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v24) (unsigned char, signed char, signed char, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v83 = 0;
signed short v82 = -4;
unsigned int v81 = 2U;

unsigned char v7 (void)
{
{
for (;;) {
signed int v86 = 2;
signed char v85 = -1;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}
