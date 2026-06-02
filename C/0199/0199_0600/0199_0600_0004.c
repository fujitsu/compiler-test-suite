#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern signed short v3 (signed int, signed char, unsigned int);
extern signed short (*v4) (signed int, signed char, unsigned int);
unsigned short v5 (signed int, unsigned int, unsigned int, signed short);
unsigned short (*v6) (signed int, unsigned int, unsigned int, signed short) = v5;
extern signed char v7 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v8) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v9 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed char, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
unsigned short v17 (unsigned int, signed short);
unsigned short (*v18) (unsigned int, signed short) = v17;
extern void v19 (signed short, signed char, signed short, unsigned short);
extern void (*v20) (signed short, signed char, signed short, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned char v25 (signed char, signed short);
extern unsigned char (*v26) (signed char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = -3;
unsigned short v127 = 3;
unsigned char v126 = 4;

void v23 (void)
{
{
for (;;) {
signed char v131 = -1;
signed char v130 = -3;
unsigned char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 2;
unsigned short v135 = 2;
signed char v134 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v137, unsigned int v138, unsigned int v139, signed short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = -4;
signed char v142 = 0;
signed int v141 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
