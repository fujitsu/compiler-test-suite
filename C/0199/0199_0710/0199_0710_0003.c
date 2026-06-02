#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern signed char v3 (unsigned int, signed int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, signed int, unsigned char, signed short);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
extern signed char v7 (signed int, unsigned short, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, unsigned short);
extern signed short v15 (unsigned short, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned short, signed short, signed short, unsigned short);
extern signed short v17 (signed short, signed char);
extern signed short (*v18) (signed short, signed char);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (signed short, unsigned char, signed short, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, signed short, unsigned int);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed short v25 (unsigned short, unsigned short, signed short);
extern signed short (*v26) (unsigned short, unsigned short, signed short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned char v29 (signed short, unsigned char);
extern unsigned char (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = 3;
signed int v118 = -2;
unsigned int v117 = 7U;

unsigned char v23 (void)
{
{
for (;;) {
signed int v122 = -2;
signed short v121 = 2;
unsigned int v120 = 1U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v123;
unsigned short v124;
signed short v125;
signed short v126;
v123 = 6 + 4;
v124 = 7 + 4;
v125 = v121 + v121;
v126 = v25 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 3;
signed short v129 = 1;
unsigned int v128 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
