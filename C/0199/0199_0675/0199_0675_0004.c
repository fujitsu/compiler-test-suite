#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
extern void v9 (unsigned short, signed short, signed int);
extern void (*v10) (unsigned short, signed short, signed int);
extern void v11 (unsigned short, signed short, unsigned int);
extern void (*v12) (unsigned short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
void v17 (signed char, unsigned short, unsigned short, unsigned int);
void (*v18) (signed char, unsigned short, unsigned short, unsigned int) = v17;
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (signed char, unsigned short);
extern unsigned short (*v22) (signed char, unsigned short);
extern void v23 (signed char, unsigned char);
extern void (*v24) (signed char, unsigned char);
signed short v25 (signed int, unsigned int, signed short);
signed short (*v26) (signed int, unsigned int, signed short) = v25;
extern void v27 (unsigned int, signed char, unsigned short, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short, unsigned short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 3;
unsigned int v121 = 7U;
signed int v120 = -2;

unsigned int v29 (void)
{
{
for (;;) {
signed char v125 = 1;
signed short v124 = 0;
unsigned char v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed int v126, unsigned int v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 0;
signed short v130 = 0;
unsigned short v129 = 2;
trace++;
switch (trace)
{
case 10: 
return 0;
default: abort ();
}
}
}
}

void v17 (signed char v132, unsigned short v133, unsigned short v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -3;
signed char v137 = -2;
unsigned char v136 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
