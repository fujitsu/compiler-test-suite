#include <stdlib.h>
signed short v1 (unsigned short, unsigned char);
signed short (*v2) (unsigned short, unsigned char) = v1;
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, unsigned char);
extern signed int (*v8) (signed int, unsigned char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned short, signed short);
extern signed int v13 (signed int, signed char);
extern signed int (*v14) (signed int, signed char);
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned int, unsigned short, signed int);
extern signed short v19 (unsigned char, signed char, signed char);
extern signed short (*v20) (unsigned char, signed char, signed char);
void v21 (signed int);
void (*v22) (signed int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (signed short, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (signed short, unsigned char, unsigned short, unsigned short);
extern void v27 (signed char, signed int, unsigned char);
extern void (*v28) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v147 = 4;
signed int v146 = -1;
unsigned int v145 = 6U;

void v21 (signed int v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned int v151 = 7U;
signed int v150 = 1;
signed short v149 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v152, unsigned char v153)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned char v156 = 6;
unsigned short v155 = 7;
unsigned char v154 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v157;
unsigned char v158;
signed int v159;
v157 = -4 - -3;
v158 = v156 - v156;
v159 = v7 (v157, v158);
history[history_index++] = (int)v159;
}
break;
case 2: 
{
unsigned short v160;
unsigned int v161;
unsigned short v162;
signed short v163;
unsigned char v164;
v160 = 3 - v155;
v161 = 4U + 7U;
v162 = v155 - 3;
v163 = 3 - -1;
v164 = v11 (v160, v161, v162, v163);
history[history_index++] = (int)v164;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
