#include <stdlib.h>
void v5 (unsigned char, unsigned int, unsigned char, signed int);
void (*v6) (unsigned char, unsigned int, unsigned char, signed int) = v5;
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned short v19 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned short, unsigned char);
extern unsigned int v21 (signed int, signed int);
extern unsigned int (*v22) (signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
unsigned int v25 (unsigned short, signed char, signed int);
unsigned int (*v26) (unsigned short, signed char, signed int) = v25;
extern unsigned short v27 (signed short, unsigned short, signed char);
extern unsigned short (*v28) (signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v121 = -1;
unsigned short v120 = 2;
unsigned short v119 = 3;

unsigned int v25 (unsigned short v122, signed char v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 2;
signed short v126 = -4;
signed int v125 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v128;
v128 = v29 ();
history[history_index++] = (int)v128;
}
break;
case 5: 
return 5U;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned char v131 = 3;
unsigned char v130 = 0;
signed char v129 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v132, unsigned int v133, unsigned char v134, signed int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 5;
signed int v137 = 0;
signed char v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
