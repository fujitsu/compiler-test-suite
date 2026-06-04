#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern void v3 (unsigned char, unsigned int, unsigned char, signed short);
extern void (*v4) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned int v7 (unsigned char, signed int, signed int);
unsigned int (*v8) (unsigned char, signed int, signed int) = v7;
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern signed short v11 (unsigned int, unsigned int, signed char, signed char);
extern signed short (*v12) (unsigned int, unsigned int, signed char, signed char);
signed short v13 (unsigned short, unsigned short);
signed short (*v14) (unsigned short, unsigned short) = v13;
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed char, signed char, signed int);
extern signed int (*v18) (unsigned int, signed char, signed char, signed int);
extern unsigned short v19 (signed char, signed short, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, signed short, unsigned short, unsigned short);
extern signed short v21 (unsigned char, signed int, unsigned int, signed int);
extern signed short (*v22) (unsigned char, signed int, unsigned int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed int, signed int);
extern signed int (*v26) (signed int, signed int, signed int);
unsigned int v29 (signed short, signed short);
unsigned int (*v30) (signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v143 = 2;
unsigned short v142 = 0;
unsigned int v141 = 4U;

unsigned int v29 (signed short v144, signed short v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 0;
signed int v147 = 3;
unsigned short v146 = 5;
trace++;
switch (trace)
{
case 8: 
{
signed char v149;
unsigned short v150;
signed char v151;
v149 = -3 - -2;
v150 = 0 + 6;
v151 = v9 (v149, v150);
history[history_index++] = (int)v151;
}
break;
case 10: 
{
v23 ();
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v152, unsigned short v153)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 0U;
unsigned int v155 = 4U;
signed short v154 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v157, signed int v158, signed int v159)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
signed int v162 = -4;
signed short v161 = -3;
unsigned int v160 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
