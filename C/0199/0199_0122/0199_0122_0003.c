#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed int, signed short, unsigned int);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned int);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (signed char, unsigned int, signed int);
extern signed char (*v16) (signed char, unsigned int, signed int);
extern signed short v17 (signed short, signed short, unsigned char);
extern signed short (*v18) (signed short, signed short, unsigned char);
extern unsigned char v19 (unsigned char, signed char);
extern unsigned char (*v20) (unsigned char, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed int, unsigned int, signed char);
extern signed char (*v24) (signed int, unsigned int, signed char);
extern void v25 (unsigned int, signed short, unsigned char);
extern void (*v26) (unsigned int, signed short, unsigned char);
extern signed short v29 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v30) (signed char, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = -2;
unsigned int v119 = 1U;
signed int v118 = -1;

unsigned char v1 (void)
{
{
for (;;) {
signed short v123 = 1;
signed char v122 = 0;
signed int v121 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v124;
signed char v125;
v124 = 3 + -1;
v125 = v11 (v124);
history[history_index++] = (int)v125;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
