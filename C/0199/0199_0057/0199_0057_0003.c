#include <stdlib.h>
extern signed char v3 (signed short);
extern signed char (*v4) (signed short);
extern signed char v5 (signed int, signed short, signed int, signed char);
extern signed char (*v6) (signed int, signed short, signed int, signed char);
unsigned int v7 (unsigned short, signed char);
unsigned int (*v8) (unsigned short, signed char) = v7;
extern signed char v11 (unsigned int, signed short, unsigned short, unsigned int);
extern signed char (*v12) (unsigned int, signed short, unsigned short, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
unsigned int v15 (unsigned short, unsigned char, unsigned int);
unsigned int (*v16) (unsigned short, unsigned char, unsigned int) = v15;
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern unsigned short v23 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned short, unsigned int);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed short, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 5;
unsigned int v119 = 7U;
unsigned char v118 = 2;

signed char v17 (signed char v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 4;
unsigned short v123 = 0;
signed short v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v125, unsigned char v126, unsigned int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 1;
unsigned char v129 = 2;
signed short v128 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -4;
unsigned char v134 = 2;
unsigned int v133 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
