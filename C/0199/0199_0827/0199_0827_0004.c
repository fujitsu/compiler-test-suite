#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed int, unsigned short);
extern signed short (*v2) (signed char, unsigned char, signed int, unsigned short);
extern unsigned short v3 (unsigned char, signed short);
extern unsigned short (*v4) (unsigned char, signed short);
extern signed short v5 (unsigned int, signed short, unsigned int);
extern signed short (*v6) (unsigned int, signed short, unsigned int);
void v7 (signed short, unsigned char);
void (*v8) (signed short, unsigned char) = v7;
unsigned short v9 (signed char, signed char, unsigned int);
unsigned short (*v10) (signed char, signed char, unsigned int) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned int v23 (unsigned char, unsigned int);
unsigned int (*v24) (unsigned char, unsigned int) = v23;
extern signed int v25 (signed int, signed char, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed short v29 (signed char, signed int, signed short, signed int);
extern signed short (*v30) (signed char, signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -2;
unsigned short v126 = 7;
unsigned char v125 = 0;

unsigned int v23 (unsigned char v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 0U;
unsigned char v131 = 4;
unsigned char v130 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v133, signed char v134, unsigned int v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 1;
unsigned short v137 = 4;
signed char v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v139, unsigned char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 3;
signed short v142 = 0;
signed short v141 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
