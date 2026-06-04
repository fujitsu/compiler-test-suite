#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, signed char);
signed int v15 (signed short, signed int, signed int);
signed int (*v16) (signed short, signed int, signed int) = v15;
extern signed char v17 (signed int, unsigned int);
extern signed char (*v18) (signed int, unsigned int);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern signed short v21 (unsigned int, unsigned char, signed char, signed short);
extern signed short (*v22) (unsigned int, unsigned char, signed char, signed short);
extern void v23 (signed char, signed short, unsigned short, signed char);
extern void (*v24) (signed char, signed short, unsigned short, signed char);
unsigned char v25 (signed char, signed int);
unsigned char (*v26) (signed char, signed int) = v25;
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned char v29 (signed int, unsigned int, signed int);
extern unsigned char (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 1;
unsigned short v129 = 6;
signed short v128 = 0;

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v133 = 4;
signed int v132 = -1;
unsigned short v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed char v134, signed int v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 5;
signed short v137 = 2;
unsigned char v136 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v139, signed int v140, signed int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 4;
signed int v143 = -3;
signed short v142 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
