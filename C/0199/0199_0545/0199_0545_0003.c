#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern signed short v5 (signed short, unsigned char, signed short);
extern signed short (*v6) (signed short, unsigned char, signed short);
extern unsigned int v7 (signed char, signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned int, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char, signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, signed char, unsigned short, unsigned char);
extern unsigned char v13 (signed char, unsigned int);
extern unsigned char (*v14) (signed char, unsigned int);
extern signed char v15 (signed short, signed int, unsigned short);
extern signed char (*v16) (signed short, signed int, unsigned short);
signed short v17 (signed int);
signed short (*v18) (signed int) = v17;
extern signed int v19 (unsigned short, signed char, signed int, signed int);
extern signed int (*v20) (unsigned short, signed char, signed int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned char v23 (signed short, unsigned char, unsigned char, signed int);
extern unsigned char (*v24) (signed short, unsigned char, unsigned char, signed int);
extern unsigned char v25 (unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, signed int, unsigned short);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 5;
unsigned char v118 = 3;
unsigned char v117 = 0;

signed int v27 (void)
{
{
for (;;) {
signed short v122 = 0;
signed short v121 = 3;
unsigned int v120 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 3;
unsigned int v125 = 1U;
signed int v124 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v127;
signed int v128;
unsigned short v129;
unsigned char v130;
v127 = 2 + 5;
v128 = v123 - v123;
v129 = v126 - 5;
v130 = v25 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 7: 
return 0;
default: abort ();
}
}
}
}
