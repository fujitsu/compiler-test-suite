#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern signed short v5 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char, unsigned short, unsigned char);
void v7 (unsigned char, signed short, unsigned char, unsigned int);
void (*v8) (unsigned char, signed short, unsigned char, unsigned int) = v7;
extern unsigned int v9 (signed short, signed char);
extern unsigned int (*v10) (signed short, signed char);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v17 (unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned int, unsigned int);
extern signed char v19 (unsigned short, unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned short, unsigned char);
extern signed int v21 (signed char, unsigned char, signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned char, signed char, unsigned short);
extern unsigned int v23 (signed int, signed short, signed short);
extern unsigned int (*v24) (signed int, signed short, signed short);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
void v27 (signed int, unsigned int, unsigned int);
void (*v28) (signed int, unsigned int, unsigned int) = v27;
signed char v29 (unsigned short, unsigned short, signed short);
signed char (*v30) (unsigned short, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v133 = -2;
unsigned char v132 = 2;
unsigned char v131 = 5;

signed char v29 (unsigned short v134, unsigned short v135, signed short v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 1;
signed char v138 = -4;
signed char v137 = 2;
trace++;
switch (trace)
{
case 3: 
return 3;
case 11: 
return v137;
default: abort ();
}
}
}
}

void v27 (signed int v140, unsigned int v141, unsigned int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = 2;
signed char v144 = -3;
signed int v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v146, signed short v147, unsigned char v148, unsigned int v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 5;
signed char v151 = -4;
unsigned char v150 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
