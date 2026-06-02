#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
signed char v7 (signed char);
signed char (*v8) (signed char) = v7;
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
unsigned char v19 (unsigned char, unsigned short, unsigned int, signed short);
unsigned char (*v20) (unsigned char, unsigned short, unsigned int, signed short) = v19;
extern signed char v21 (signed char, signed short, signed int);
extern signed char (*v22) (signed char, signed short, signed int);
extern void v25 (unsigned short, unsigned int, signed char);
extern void (*v26) (unsigned short, unsigned int, signed char);
extern void v29 (signed char, unsigned char, signed short);
extern void (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = 3;
unsigned char v123 = 4;
unsigned short v122 = 6;

unsigned char v19 (unsigned char v125, unsigned short v126, unsigned int v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 0U;
signed char v130 = -2;
signed int v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v134 = 5;
signed short v133 = -1;
unsigned int v132 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 5U;
signed char v137 = -2;
unsigned int v136 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
