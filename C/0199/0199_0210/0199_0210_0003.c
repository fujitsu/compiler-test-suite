#include <stdlib.h>
unsigned short v1 (unsigned short, signed short);
unsigned short (*v2) (unsigned short, signed short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned char);
extern signed char v7 (unsigned int, signed short, signed short);
extern signed char (*v8) (unsigned int, signed short, signed short);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned int v11 (signed int, signed int);
extern unsigned int (*v12) (signed int, signed int);
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed int, signed short, signed short);
extern unsigned char (*v18) (signed int, signed short, signed short);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
extern void v21 (signed char, signed short, signed short, signed short);
extern void (*v22) (signed char, signed short, signed short, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v26) (unsigned char, signed int, signed short, signed int);
extern unsigned int v27 (signed short, signed short, signed short);
extern unsigned int (*v28) (signed short, signed short, signed short);
extern void v29 (signed char, unsigned int, signed char, signed short);
extern void (*v30) (signed char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 4;
signed short v125 = -1;
unsigned int v124 = 3U;

unsigned short v1 (unsigned short v127, signed short v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 6;
signed short v130 = 2;
signed short v129 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v132;
unsigned int v133;
signed char v134;
signed short v135;
v132 = 3 + 2;
v133 = 4U + 0U;
v134 = -2 - -3;
v135 = v130 - v130;
v29 (v132, v133, v134, v135);
}
break;
case 14: 
return v131;
default: abort ();
}
}
}
}
