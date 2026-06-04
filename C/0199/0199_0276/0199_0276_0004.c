#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
extern signed int v3 (unsigned char, signed short, unsigned short);
extern signed int (*v4) (unsigned char, signed short, unsigned short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char);
extern signed short v11 (unsigned int, signed int, signed int, signed short);
extern signed short (*v12) (unsigned int, signed int, signed int, signed short);
extern unsigned int v13 (signed char, signed short, signed char, signed int);
extern unsigned int (*v14) (signed char, signed short, signed char, signed int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned int v17 (signed int, unsigned short, signed char);
extern unsigned int (*v18) (signed int, unsigned short, signed char);
unsigned char v21 (signed short, signed char, signed short, unsigned short);
unsigned char (*v22) (signed short, signed char, signed short, unsigned short) = v21;
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (signed int, signed int);
extern signed int (*v26) (signed int, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = 1;
unsigned int v129 = 3U;
signed short v128 = -1;

unsigned char v21 (signed short v131, signed char v132, signed short v133, unsigned short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -3;
signed int v136 = 1;
signed short v135 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed char v140 = -1;
unsigned int v139 = 1U;
signed char v138 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v141;
unsigned char v142;
unsigned int v143;
v141 = v139 + 0U;
v142 = 6 - 3;
v143 = v9 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned char v146 = 6;
unsigned char v145 = 2;
unsigned short v144 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
