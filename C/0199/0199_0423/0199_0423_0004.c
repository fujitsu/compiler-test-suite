#include <stdlib.h>
extern unsigned char v3 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, signed short, unsigned int, signed char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
signed short v7 (unsigned short, unsigned int, unsigned char);
signed short (*v8) (unsigned short, unsigned int, unsigned char) = v7;
signed short v9 (signed int, unsigned short, unsigned int);
signed short (*v10) (signed int, unsigned short, unsigned int) = v9;
extern signed int v11 (signed int, unsigned char, unsigned short);
extern signed int (*v12) (signed int, unsigned char, unsigned short);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern void v15 (unsigned int, unsigned char);
extern void (*v16) (unsigned int, unsigned char);
extern void v17 (signed int, signed short, signed int, unsigned int);
extern void (*v18) (signed int, signed short, signed int, unsigned int);
extern signed int v19 (signed int, unsigned int, unsigned int);
extern signed int (*v20) (signed int, unsigned int, unsigned int);
static signed int v21 (signed short);
static signed int (*v22) (signed short) = v21;
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (unsigned char, unsigned int, signed int);
extern signed int (*v26) (unsigned char, unsigned int, signed int);
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
extern signed char v29 (signed short, unsigned int, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned int, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v141 = -2;
signed char v140 = -2;
signed short v139 = 0;

static signed int v21 (signed short v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 0;
unsigned int v144 = 6U;
signed int v143 = 0;
trace++;
switch (trace)
{
case 7: 
return -3;
default: abort ();
}
}
}
}

signed short v9 (signed int v146, unsigned short v147, unsigned int v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 4;
signed int v150 = -2;
unsigned short v149 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed short v152;
signed int v153;
v152 = 2 + -1;
v153 = v21 (v152);
history[history_index++] = (int)v153;
}
break;
case 8: 
{
unsigned int v154;
unsigned char v155;
v154 = 0U - 2U;
v155 = 0 - 0;
v15 (v154, v155);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v156, unsigned int v157, unsigned char v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
signed char v161 = -1;
unsigned int v160 = 5U;
unsigned short v159 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
