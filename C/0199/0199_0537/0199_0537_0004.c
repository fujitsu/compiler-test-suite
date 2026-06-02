#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
unsigned short v9 (signed int, signed int);
unsigned short (*v10) (signed int, signed int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (signed int, unsigned char);
extern signed short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern unsigned int v17 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short, signed short, unsigned short);
unsigned int v19 (signed char, unsigned short, unsigned short);
unsigned int (*v20) (signed char, unsigned short, unsigned short) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int, signed int, unsigned int);
extern signed int v25 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned char, unsigned int, signed short, unsigned short);
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
void v29 (unsigned int, unsigned char);
void (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = -4;
signed int v126 = 0;
unsigned short v125 = 3;

void v29 (unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 5U;
signed short v131 = 1;
unsigned char v130 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v133, unsigned short v134, unsigned short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 7;
unsigned int v137 = 2U;
signed int v136 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v139, signed int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 3U;
signed int v142 = 2;
signed int v141 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
