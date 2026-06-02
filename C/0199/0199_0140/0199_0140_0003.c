#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
extern unsigned short v3 (signed short, unsigned char);
extern unsigned short (*v4) (signed short, unsigned char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
signed char v7 (signed int, unsigned int);
signed char (*v8) (signed int, unsigned int) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned char, unsigned short, unsigned short);
extern signed int v15 (unsigned char, signed char);
extern signed int (*v16) (unsigned char, signed char);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
extern signed short v19 (signed short, unsigned short, unsigned int);
extern signed short (*v20) (signed short, unsigned short, unsigned int);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern unsigned int v23 (signed char, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed char);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 1;
signed short v117 = -3;
unsigned short v116 = 6;

signed char v7 (signed int v119, unsigned int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 0;
unsigned char v122 = 6;
signed int v121 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed short v124;
unsigned short v125;
unsigned int v126;
signed short v127;
v124 = -4 - 3;
v125 = 0 - 1;
v126 = 5U + 5U;
v127 = v19 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
