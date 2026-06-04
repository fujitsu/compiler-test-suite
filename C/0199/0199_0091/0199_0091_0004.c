#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, signed int);
extern unsigned int (*v2) (unsigned int, signed short, signed int);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, unsigned int);
extern unsigned int (*v8) (signed int, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v14) (unsigned int, unsigned int, signed int, signed char);
void v15 (signed int, unsigned char);
void (*v16) (signed int, unsigned char) = v15;
extern signed short v17 (signed short, unsigned int, signed int, signed int);
extern signed short (*v18) (signed short, unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
void v23 (signed char, signed char, signed int);
void (*v24) (signed char, signed char, signed int) = v23;
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
signed int v27 (unsigned short, unsigned int, signed char, signed char);
signed int (*v28) (unsigned short, unsigned int, signed char, signed char) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = 2;
unsigned int v123 = 4U;
signed int v122 = -2;

signed int v27 (unsigned short v125, unsigned int v126, signed char v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 6U;
signed int v130 = -3;
unsigned char v129 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v132, signed char v133, signed int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 5;
signed short v136 = -3;
signed char v135 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v138, unsigned char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = -3;
signed char v141 = -1;
unsigned short v140 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
