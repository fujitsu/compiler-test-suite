#include <stdlib.h>
unsigned int v1 (signed short, signed short, unsigned char, unsigned short);
unsigned int (*v2) (signed short, signed short, unsigned char, unsigned short) = v1;
extern unsigned short v3 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, signed char, unsigned short, unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed char v7 (signed char, unsigned char, signed short);
extern signed char (*v8) (signed char, unsigned char, signed short);
unsigned short v9 (signed char);
unsigned short (*v10) (signed char) = v9;
extern signed char v11 (unsigned short, signed short, signed int, signed short);
extern signed char (*v12) (unsigned short, signed short, signed int, signed short);
extern signed char v13 (unsigned int, signed short);
extern signed char (*v14) (unsigned int, signed short);
void v15 (unsigned char, unsigned int);
void (*v16) (unsigned char, unsigned int) = v15;
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (unsigned char, unsigned int);
extern signed char (*v22) (unsigned char, unsigned int);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (signed int, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (signed int, unsigned int);
extern signed int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = -1;
unsigned short v133 = 7;
signed char v132 = 0;

void v15 (unsigned char v135, unsigned int v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 0;
signed int v138 = -2;
unsigned int v137 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v140;
signed short v141;
unsigned char v142;
v140 = 7 - 4;
v141 = -3 + -3;
v142 = v23 (v140, v141);
history[history_index++] = (int)v142;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (signed char v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = 3;
unsigned int v145 = 5U;
unsigned short v144 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v147, signed short v148, unsigned char v149, unsigned short v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed char v153 = -2;
signed short v152 = 0;
unsigned char v151 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v154;
signed short v155;
signed char v156;
v154 = 1U - 4U;
v155 = v147 + -4;
v156 = v13 (v154, v155);
history[history_index++] = (int)v156;
}
break;
case 14: 
return 5U;
default: abort ();
}
}
}
}
