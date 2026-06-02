#include <stdlib.h>
signed int v1 (unsigned int);
signed int (*v2) (unsigned int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (unsigned int, signed int, signed char);
extern void (*v12) (unsigned int, signed int, signed char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (unsigned char, unsigned int, signed int);
extern unsigned short (*v16) (unsigned char, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (signed char, unsigned int, unsigned short, signed short);
extern signed int (*v22) (signed char, unsigned int, unsigned short, signed short);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (signed char, unsigned int, unsigned int, signed short);
extern void (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v139 = 2;
unsigned short v138 = 0;
unsigned short v137 = 5;

signed int v23 (unsigned int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 5;
unsigned char v142 = 5;
unsigned short v141 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned char v146 = 5;
signed short v145 = 0;
signed char v144 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = 0;
signed int v149 = -3;
unsigned int v148 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v151;
unsigned int v152;
signed char v153;
v151 = v147 + v148;
v152 = v147 - v148;
v153 = v25 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
