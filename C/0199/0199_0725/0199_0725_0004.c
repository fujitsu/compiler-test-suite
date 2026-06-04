#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v8) (signed int, unsigned int, unsigned short, unsigned int);
signed short v9 (unsigned char, signed char, unsigned int, unsigned char);
signed short (*v10) (unsigned char, signed char, unsigned int, unsigned char) = v9;
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
unsigned short v13 (unsigned char);
unsigned short (*v14) (unsigned char) = v13;
extern unsigned short v15 (signed short, unsigned short, signed int, signed char);
extern unsigned short (*v16) (signed short, unsigned short, signed int, signed char);
extern unsigned char v17 (signed char, unsigned int, signed char);
extern unsigned char (*v18) (signed char, unsigned int, signed char);
extern void v19 (signed int, signed short, unsigned short, unsigned short);
extern void (*v20) (signed int, signed short, unsigned short, unsigned short);
extern signed char v21 (signed short, signed int);
extern signed char (*v22) (signed short, signed int);
extern signed int v23 (signed int, signed int, signed char, unsigned char);
extern signed int (*v24) (signed int, signed int, signed char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, unsigned char, signed int);
unsigned char v27 (unsigned char, unsigned int, signed int);
unsigned char (*v28) (unsigned char, unsigned int, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v138 = 5;
unsigned short v137 = 6;
unsigned char v136 = 5;

unsigned char v27 (unsigned char v139, unsigned int v140, signed int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -1;
unsigned int v143 = 1U;
signed short v142 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
signed char v148 = -4;
unsigned int v147 = 7U;
unsigned char v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v149, signed char v150, unsigned int v151, unsigned char v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed int v155 = -1;
signed short v154 = 1;
signed int v153 = -1;
trace++;
switch (trace)
{
case 10: 
{
signed short v156;
signed int v157;
signed char v158;
v156 = 2 + v154;
v157 = v155 - 1;
v158 = v21 (v156, v157);
history[history_index++] = (int)v158;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
