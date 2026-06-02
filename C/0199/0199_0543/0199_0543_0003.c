#include <stdlib.h>
extern unsigned short v3 (signed short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed int);
signed short v5 (signed short, signed int, signed short);
signed short (*v6) (signed short, signed int, signed short) = v5;
extern signed int v7 (unsigned char, unsigned int, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned char);
extern unsigned int (*v12) (signed int, signed short, unsigned char);
extern unsigned int v13 (signed int, unsigned char, signed short);
extern unsigned int (*v14) (signed int, unsigned char, signed short);
extern signed int v15 (unsigned short, signed char);
extern signed int (*v16) (unsigned short, signed char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
void v19 (signed int);
void (*v20) (signed int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (signed char, unsigned int, signed short);
extern void (*v24) (signed char, unsigned int, signed short);
extern signed short v25 (unsigned int, unsigned char, signed int);
extern signed short (*v26) (unsigned int, unsigned char, signed int);
signed char v27 (unsigned short, signed char);
signed char (*v28) (unsigned short, signed char) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v119 = 2;
unsigned short v118 = 0;
unsigned short v117 = 5;

signed char v29 (void)
{
{
for (;;) {
unsigned char v122 = 3;
signed char v121 = 1;
signed short v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (unsigned short v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 0;
signed short v126 = 0;
unsigned char v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 1;
signed char v130 = -2;
unsigned short v129 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v132, signed int v133, signed short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 7U;
signed int v136 = -1;
unsigned short v135 = 0;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}
