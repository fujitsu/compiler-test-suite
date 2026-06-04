#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned int v3 (signed short, signed char);
extern unsigned int (*v4) (signed short, signed char);
extern unsigned short v5 (signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed char, unsigned short, unsigned char);
extern unsigned short v7 (unsigned char, unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, unsigned char, signed char);
signed char v9 (unsigned char, unsigned char, unsigned short, signed char);
signed char (*v10) (unsigned char, unsigned char, unsigned short, signed char) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned short v17 (signed char, unsigned short);
extern unsigned short (*v18) (signed char, unsigned short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = 2;
signed int v128 = -3;
signed int v127 = 3;

unsigned short v23 (unsigned char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 0;
signed int v132 = 2;
unsigned char v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v136 = 2;
unsigned int v135 = 1U;
signed int v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v137, unsigned char v138, unsigned short v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 1;
signed int v142 = -2;
unsigned short v141 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
