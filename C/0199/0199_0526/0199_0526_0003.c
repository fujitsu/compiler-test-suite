#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char, signed int);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char, signed int);
extern signed int v3 (signed char, signed char, signed int, unsigned char);
extern signed int (*v4) (signed char, signed char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned int, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned short, unsigned int);
extern signed int v9 (unsigned short, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned short, unsigned short, unsigned char, signed char);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v15 (unsigned int, signed int);
extern signed short (*v16) (unsigned int, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern void v23 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v24) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v25 (signed short, unsigned int, signed int, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int, signed int, unsigned int);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char, unsigned int, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 0;
unsigned char v115 = 4;
signed char v114 = 1;

signed int v21 (void)
{
{
for (;;) {
unsigned short v119 = 4;
signed short v118 = -2;
signed int v117 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v120;
unsigned short v121;
signed short v122;
unsigned char v123;
v120 = 3U + 1U;
v121 = v119 + 2;
v122 = -4 - v118;
v123 = 6 - 5;
v23 (v120, v121, v122, v123);
}
break;
case 16: 
return -3;
default: abort ();
}
}
}
}
