#include <stdlib.h>
signed char v1 (signed short, signed char, signed int);
signed char (*v2) (signed short, signed char, signed int) = v1;
extern signed short v3 (unsigned char, signed char, signed short);
extern signed short (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned int, signed char, signed short, unsigned short);
extern unsigned short (*v6) (unsigned int, signed char, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (unsigned char, signed char);
extern void (*v18) (unsigned char, signed char);
extern unsigned short v19 (unsigned char, signed short, unsigned short);
extern unsigned short (*v20) (unsigned char, signed short, unsigned short);
signed short v21 (signed int, unsigned int, signed char);
signed short (*v22) (signed int, unsigned int, signed char) = v21;
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
void v27 (signed int, unsigned int, signed char, signed char);
void (*v28) (signed int, unsigned int, signed char, signed char) = v27;
extern void v29 (signed int, unsigned char, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v135 = 6U;
unsigned char v134 = 5;
unsigned char v133 = 3;

void v27 (signed int v136, unsigned int v137, signed char v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = -1;
signed int v141 = -4;
unsigned char v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v143, unsigned int v144, signed char v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 1U;
signed int v147 = 2;
unsigned int v146 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v149, signed char v150, signed int v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned char v154 = 1;
unsigned char v153 = 0;
signed char v152 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v155;
signed int v156;
v155 = v154 + v153;
v156 = v13 (v155);
history[history_index++] = (int)v156;
}
break;
case 12: 
return v152;
default: abort ();
}
}
}
}
