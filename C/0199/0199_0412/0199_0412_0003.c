#include <stdlib.h>
extern void v1 (unsigned short, unsigned int, unsigned int, signed short);
extern void (*v2) (unsigned short, unsigned int, unsigned int, signed short);
void v3 (signed short, signed short, unsigned char);
void (*v4) (signed short, signed short, unsigned char) = v3;
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
extern signed int v7 (signed char, signed char, unsigned short, signed char);
extern signed int (*v8) (signed char, signed char, unsigned short, signed char);
void v9 (signed short, unsigned int, unsigned int, unsigned int);
void (*v10) (signed short, unsigned int, unsigned int, unsigned int) = v9;
signed short v11 (unsigned int, signed short);
signed short (*v12) (unsigned int, signed short) = v11;
extern unsigned int v13 (signed int, unsigned short, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned int);
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
extern signed short v21 (signed short, unsigned int, unsigned short);
extern signed short (*v22) (signed short, unsigned int, unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
extern unsigned int v27 (unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, signed short);
extern unsigned char v29 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v133 = -2;
unsigned int v132 = 1U;
unsigned char v131 = 2;

signed short v11 (unsigned int v134, signed short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = 0;
signed int v137 = -2;
unsigned short v136 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v139, unsigned int v140, unsigned int v141, unsigned int v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 5U;
signed int v144 = 3;
unsigned short v143 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v146, signed short v147, unsigned char v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = 1;
unsigned char v150 = 4;
signed int v149 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
