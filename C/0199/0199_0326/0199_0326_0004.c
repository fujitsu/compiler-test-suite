#include <stdlib.h>
extern signed char v1 (signed char, signed short);
extern signed char (*v2) (signed char, signed short);
extern void v3 (signed char, unsigned char, signed short, signed char);
extern void (*v4) (signed char, unsigned char, signed short, signed char);
extern void v5 (signed short, unsigned char, unsigned int);
extern void (*v6) (signed short, unsigned char, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed int, unsigned short, unsigned int);
extern unsigned int (*v10) (signed int, unsigned short, unsigned int);
unsigned char v13 (unsigned short, signed int);
unsigned char (*v14) (unsigned short, signed int) = v13;
extern signed short v15 (unsigned int, signed int, signed short);
extern signed short (*v16) (unsigned int, signed int, signed short);
signed short v17 (signed short, signed int);
signed short (*v18) (signed short, signed int) = v17;
unsigned char v19 (unsigned short, unsigned short);
unsigned char (*v20) (unsigned short, unsigned short) = v19;
extern void v21 (signed int, signed int, unsigned int);
extern void (*v22) (signed int, signed int, unsigned int);
extern void v25 (signed short, signed short, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char);
extern signed short v27 (signed int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned char, unsigned short);
extern unsigned short v29 (unsigned char, signed char);
extern unsigned short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v136 = 1;
unsigned int v135 = 2U;
signed char v134 = 0;

unsigned char v19 (unsigned short v137, unsigned short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 2;
unsigned int v140 = 5U;
unsigned short v139 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v142, signed int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = 1;
signed int v145 = -4;
unsigned char v144 = 4;
trace++;
switch (trace)
{
case 2: 
return v146;
case 4: 
{
signed int v147;
signed int v148;
unsigned int v149;
v147 = -2 + v145;
v148 = 2 - -1;
v149 = 4U + 7U;
v21 (v147, v148, v149);
}
break;
case 10: 
return v142;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v150, signed int v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed char v154 = -1;
signed short v153 = 3;
signed short v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
