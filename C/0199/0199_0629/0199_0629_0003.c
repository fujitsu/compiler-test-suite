#include <stdlib.h>
extern unsigned char v1 (signed short, signed char, unsigned short, unsigned int);
extern unsigned char (*v2) (signed short, signed char, unsigned short, unsigned int);
extern unsigned char v3 (signed int, signed short, unsigned short, signed int);
extern unsigned char (*v4) (signed int, signed short, unsigned short, signed int);
extern signed char v7 (unsigned char, unsigned short, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned short);
extern signed short v9 (signed int, signed char, unsigned short);
extern signed short (*v10) (signed int, signed char, unsigned short);
extern unsigned short v11 (signed int, signed short, unsigned char, signed char);
extern unsigned short (*v12) (signed int, signed short, unsigned char, signed char);
extern unsigned int v13 (unsigned char, unsigned int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned char);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned char);
extern signed short v29 (signed int, unsigned short, signed int);
extern signed short (*v30) (signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 1;
unsigned char v121 = 1;
unsigned char v120 = 3;

unsigned int v17 (void)
{
{
for (;;) {
signed short v125 = -3;
unsigned char v124 = 3;
signed char v123 = 0;
trace++;
switch (trace)
{
case 11: 
return 0U;
default: abort ();
}
}
}
}
