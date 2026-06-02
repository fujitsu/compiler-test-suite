#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed short, signed int);
extern signed short (*v2) (signed char, unsigned char, signed short, signed int);
extern void v3 (unsigned char, signed int, unsigned int);
extern void (*v4) (unsigned char, signed int, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned short v9 (signed char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned int);
extern unsigned int v11 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char, unsigned int);
extern void v13 (unsigned char, signed char, signed short);
extern void (*v14) (unsigned char, signed char, signed short);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned short v23 (unsigned short, signed int, signed int, signed short);
extern unsigned short (*v24) (unsigned short, signed int, signed int, signed short);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v136 = 6;
unsigned short v135 = 4;
unsigned short v134 = 1;

unsigned short v15 (void)
{
{
for (;;) {
unsigned int v139 = 1U;
signed int v138 = 1;
unsigned short v137 = 7;
trace++;
switch (trace)
{
case 5: 
return 0;
case 7: 
{
unsigned char v140;
signed int v141;
unsigned int v142;
v140 = 7 + 6;
v141 = v138 + 3;
v142 = 0U - v139;
v3 (v140, v141, v142);
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
