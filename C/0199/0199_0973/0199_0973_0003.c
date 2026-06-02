#include <stdlib.h>
extern void v1 (unsigned short, signed int);
extern void (*v2) (unsigned short, signed int);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
signed int v5 (unsigned short, signed char, signed short, signed short);
signed int (*v6) (unsigned short, signed char, signed short, signed short) = v5;
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern unsigned short v9 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned char, unsigned char);
extern signed int v17 (signed char, unsigned int, signed short, signed short);
extern signed int (*v18) (signed char, unsigned int, signed short, signed short);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (signed char, signed short);
extern signed char (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, signed int, unsigned int, signed int);
extern unsigned char (*v26) (unsigned short, signed int, unsigned int, signed int);
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v127 = 0;
unsigned char v126 = 4;
unsigned char v125 = 1;

signed int v5 (unsigned short v128, signed char v129, signed short v130, signed short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = -2;
signed int v133 = -4;
signed short v132 = 1;
trace++;
switch (trace)
{
case 9: 
return v133;
default: abort ();
}
}
}
}
