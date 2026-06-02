#include <stdlib.h>
unsigned int v5 (unsigned short);
unsigned int (*v6) (unsigned short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (signed char, unsigned short);
extern signed int (*v10) (signed char, unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int, unsigned int, unsigned char, unsigned int);
extern void (*v14) (signed int, unsigned int, unsigned char, unsigned int);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed char, unsigned char, unsigned char);
extern unsigned char (*v22) (signed char, unsigned char, unsigned char);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned int v29 (signed short, signed char, unsigned char, signed short);
extern unsigned int (*v30) (signed short, signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = 0;
unsigned char v120 = 5;
signed int v119 = 0;

signed int v23 (void)
{
{
for (;;) {
signed short v124 = 2;
unsigned short v123 = 3;
signed char v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -4;
signed int v127 = 2;
signed int v126 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v129;
unsigned short v130;
signed int v131;
v129 = -3 + -4;
v130 = v125 - 1;
v131 = v9 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 3: 
return 7U;
case 11: 
return 3U;
default: abort ();
}
}
}
}
