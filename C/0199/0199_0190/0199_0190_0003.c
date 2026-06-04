#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed char v7 (signed char, unsigned int, signed int);
extern signed char (*v8) (signed char, unsigned int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (unsigned char, unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned char, unsigned short, signed short, unsigned char);
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
void v15 (signed int, signed int, signed int);
void (*v16) (signed int, signed int, signed int) = v15;
extern unsigned short v17 (signed char, signed char, signed short, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short, signed short);
unsigned int v19 (signed int, signed short, unsigned short, signed int);
unsigned int (*v20) (signed int, signed short, unsigned short, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, unsigned short);
extern signed int (*v24) (signed int, signed int, unsigned short);
extern void v25 (signed int, unsigned char, signed short, unsigned int);
extern void (*v26) (signed int, unsigned char, signed short, unsigned int);
extern signed char v27 (unsigned int, signed short, signed int, signed short);
extern signed char (*v28) (unsigned int, signed short, signed int, signed short);
extern unsigned short v29 (signed char, signed int, unsigned short);
extern unsigned short (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v127 = 4;
signed int v126 = -4;
signed int v125 = -1;

unsigned int v19 (signed int v128, signed short v129, unsigned short v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 1;
signed int v133 = 3;
signed int v132 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v135, signed int v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -3;
signed short v139 = 3;
unsigned short v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
