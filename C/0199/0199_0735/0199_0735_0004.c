#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed int, signed short, signed short);
extern signed int v3 (unsigned short, signed int, unsigned short);
extern signed int (*v4) (unsigned short, signed int, unsigned short);
extern unsigned int v5 (signed short, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char);
extern signed char v7 (unsigned char, signed short, signed int);
extern signed char (*v8) (unsigned char, signed short, signed int);
void v9 (signed int);
void (*v10) (signed int) = v9;
extern void v11 (unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned int, signed char, signed char, unsigned short);
extern unsigned short (*v14) (unsigned int, signed char, signed char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned char, signed int, unsigned short, signed int);
extern unsigned char (*v20) (unsigned char, signed int, unsigned short, signed int);
unsigned int v21 (signed int, signed short, unsigned int);
unsigned int (*v22) (signed int, signed short, unsigned int) = v21;
signed char v23 (unsigned char, signed int, signed char);
signed char (*v24) (unsigned char, signed int, signed char) = v23;
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed short, signed int);
extern unsigned char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v139 = 1;
unsigned short v138 = 5;
signed short v137 = -3;

signed char v23 (unsigned char v140, signed int v141, signed char v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -4;
unsigned int v144 = 2U;
unsigned short v143 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v146;
v146 = v17 ();
history[history_index++] = (int)v146;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

unsigned int v21 (signed int v147, signed short v148, unsigned int v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 3;
unsigned short v151 = 5;
signed int v150 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v153)
{
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 0U;
unsigned int v155 = 7U;
unsigned int v154 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
