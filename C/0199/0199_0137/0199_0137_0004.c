#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned int, unsigned char);
unsigned short v5 (signed short, unsigned short);
unsigned short (*v6) (signed short, unsigned short) = v5;
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned short v11 (signed int, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned short, signed char);
extern signed short v13 (unsigned char, signed short, signed char, signed short);
extern signed short (*v14) (unsigned char, signed short, signed char, signed short);
extern signed short v15 (unsigned short, signed int);
extern signed short (*v16) (unsigned short, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed char v19 (signed int, signed int, signed char, signed int);
extern signed char (*v20) (signed int, signed int, signed char, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed char v23 (signed short, unsigned int, signed char, unsigned short);
extern signed char (*v24) (signed short, unsigned int, signed char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned char, signed char);
extern unsigned short (*v26) (unsigned int, unsigned char, signed char);
extern void v27 (signed int, unsigned short, signed char);
extern void (*v28) (signed int, unsigned short, signed char);
unsigned int v29 (unsigned short, signed char, signed char, signed int);
unsigned int (*v30) (unsigned short, signed char, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v147 = 4U;
signed char v146 = 3;
signed char v145 = -1;

unsigned int v29 (unsigned short v148, signed char v149, signed char v150, signed int v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = -1;
unsigned char v153 = 4;
signed char v152 = -3;
trace++;
switch (trace)
{
case 8: 
return 1U;
case 10: 
{
signed int v155;
unsigned short v156;
signed char v157;
v155 = -3 + -4;
v156 = 2 - v148;
v157 = v152 + v150;
v27 (v155, v156, v157);
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v5 (signed short v158, unsigned short v159)
{
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned short v162 = 6;
unsigned int v161 = 0U;
unsigned int v160 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
