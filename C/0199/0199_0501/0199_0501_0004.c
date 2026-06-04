#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed short v7 (signed char, unsigned short, signed int);
extern signed short (*v8) (signed char, unsigned short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned char, signed char, unsigned int, signed int);
extern signed char (*v12) (unsigned char, signed char, unsigned int, signed int);
extern unsigned int v13 (signed char, signed short);
extern unsigned int (*v14) (signed char, signed short);
unsigned int v15 (unsigned short, signed short);
unsigned int (*v16) (unsigned short, signed short) = v15;
unsigned char v17 (unsigned short, unsigned short, signed char);
unsigned char (*v18) (unsigned short, unsigned short, signed char) = v17;
extern unsigned short v19 (signed int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned short);
void v21 (signed char);
void (*v22) (signed char) = v21;
extern signed char v23 (signed int, unsigned short, unsigned char, signed char);
extern signed char (*v24) (signed int, unsigned short, unsigned char, signed char);
extern signed short v25 (unsigned short, unsigned int, unsigned char, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v139 = -4;
signed short v138 = 1;
unsigned int v137 = 3U;

void v21 (signed char v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 7;
signed short v142 = -1;
signed char v141 = -3;
trace++;
switch (trace)
{
case 4: 
return;
case 8: 
{
signed char v144;
signed short v145;
unsigned int v146;
v144 = v140 - v140;
v145 = 1 - 3;
v146 = v13 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v147, unsigned short v148, signed char v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed short v152 = -2;
signed char v151 = 0;
unsigned char v150 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v153, signed short v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned int v157 = 5U;
unsigned int v156 = 7U;
unsigned int v155 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
