#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned char, unsigned int);
extern unsigned int v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, signed short, unsigned short, unsigned char);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v8) (unsigned short, signed char, unsigned char, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned short);
unsigned char v13 (signed short);
unsigned char (*v14) (signed short) = v13;
extern signed short v15 (signed short, unsigned short, signed int);
extern signed short (*v16) (signed short, unsigned short, signed int);
extern unsigned char v19 (signed char, signed int, signed short);
extern unsigned char (*v20) (signed char, signed int, signed short);
extern unsigned int v21 (signed int, unsigned int, signed char, unsigned char);
extern unsigned int (*v22) (signed int, unsigned int, signed char, unsigned char);
extern signed char v23 (signed int, signed char, signed short);
extern signed char (*v24) (signed int, signed char, signed short);
extern void v25 (unsigned char, unsigned char);
extern void (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (unsigned int, signed short);
extern unsigned short (*v28) (unsigned int, signed short);
extern signed char v29 (signed short, signed int, unsigned int, unsigned int);
extern signed char (*v30) (signed short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v140 = 1;
unsigned int v139 = 7U;
signed char v138 = 1;

unsigned char v13 (signed short v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 7U;
signed char v143 = -4;
signed short v142 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v145;
unsigned short v146;
signed int v147;
signed short v148;
v145 = v141 + v141;
v146 = 3 - 4;
v147 = -2 - 0;
v148 = v15 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
