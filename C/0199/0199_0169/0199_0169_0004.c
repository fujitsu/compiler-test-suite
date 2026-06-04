#include <stdlib.h>
extern void v1 (signed char, unsigned int, signed short, unsigned char);
extern void (*v2) (signed char, unsigned int, signed short, unsigned char);
extern signed char v3 (unsigned int, signed char, unsigned int);
extern signed char (*v4) (unsigned int, signed char, unsigned int);
unsigned int v5 (unsigned short, unsigned char, signed int, signed int);
unsigned int (*v6) (unsigned short, unsigned char, signed int, signed int) = v5;
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern void v9 (signed short, unsigned char, signed short);
extern void (*v10) (signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed int, unsigned char, signed short);
unsigned short v13 (signed short, unsigned short);
unsigned short (*v14) (signed short, unsigned short) = v13;
unsigned char v15 (signed short, signed char, signed short);
unsigned char (*v16) (signed short, signed char, signed short) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v20) (signed int, signed int, signed short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
unsigned int v27 (unsigned char, signed short, signed char, signed char);
unsigned int (*v28) (unsigned char, signed short, signed char, signed char) = v27;
extern unsigned int v29 (unsigned char, unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 6;
signed char v137 = 0;
signed short v136 = 1;

unsigned int v27 (unsigned char v139, signed short v140, signed char v141, signed char v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 7U;
signed char v144 = -4;
unsigned char v143 = 5;
trace++;
switch (trace)
{
case 1: 
return v145;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v146, signed char v147, signed short v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed int v151 = 1;
signed char v150 = 1;
unsigned char v149 = 5;
trace++;
switch (trace)
{
case 9: 
{
signed int v152;
v152 = v17 ();
history[history_index++] = (int)v152;
}
break;
case 13: 
return v149;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v153, unsigned short v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed int v157 = -4;
unsigned int v156 = 7U;
signed int v155 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v158, unsigned char v159, signed int v160, signed int v161)
{
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
{
for (;;) {
signed int v164 = -1;
unsigned int v163 = 2U;
signed int v162 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
