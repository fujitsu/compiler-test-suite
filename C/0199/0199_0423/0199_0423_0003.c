#include <stdlib.h>
extern unsigned char v3 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, signed short, unsigned int, signed char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
extern signed short v9 (signed int, unsigned short, unsigned int);
extern signed short (*v10) (signed int, unsigned short, unsigned int);
extern signed int v11 (signed int, unsigned char, unsigned short);
extern signed int (*v12) (signed int, unsigned char, unsigned short);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern void v15 (unsigned int, unsigned char);
extern void (*v16) (unsigned int, unsigned char);
void v17 (signed int, signed short, signed int, unsigned int);
void (*v18) (signed int, signed short, signed int, unsigned int) = v17;
extern signed int v19 (signed int, unsigned int, unsigned int);
extern signed int (*v20) (signed int, unsigned int, unsigned int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (unsigned char, unsigned int, signed int);
extern signed int (*v26) (unsigned char, unsigned int, signed int);
unsigned short v27 (signed short, unsigned short);
unsigned short (*v28) (signed short, unsigned short) = v27;
extern signed char v29 (signed short, unsigned int, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned int, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v126 = -2;
signed short v125 = -1;
unsigned short v124 = 2;

unsigned short v27 (signed short v127, unsigned short v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 4U;
unsigned char v130 = 5;
unsigned int v129 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed int v132, signed short v133, signed int v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -2;
unsigned short v137 = 4;
unsigned int v136 = 1U;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 10: 
return;
default: abort ();
}
}
}
}
