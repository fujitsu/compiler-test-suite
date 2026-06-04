#include <stdlib.h>
extern unsigned int v1 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed int, unsigned short, unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
signed char v5 (unsigned short, unsigned char);
signed char (*v6) (unsigned short, unsigned char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, signed int);
extern unsigned char (*v10) (unsigned int, unsigned char, signed int);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern void v21 (unsigned int, unsigned short, signed int, signed int);
extern void (*v22) (unsigned int, unsigned short, signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v134 = 7;
signed char v133 = 2;
signed char v132 = 3;

signed char v5 (unsigned short v135, unsigned char v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 2;
unsigned char v138 = 7;
unsigned int v137 = 7U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v140;
unsigned short v141;
signed int v142;
signed int v143;
v140 = v137 + v137;
v141 = 0 - 0;
v142 = 0 + v139;
v143 = v139 - 0;
v21 (v140, v141, v142, v143);
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
