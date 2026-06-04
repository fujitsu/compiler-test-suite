#include <stdlib.h>
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
extern void v5 (unsigned int, signed char, signed int);
extern void (*v6) (unsigned int, signed char, signed int);
extern signed short v7 (signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int);
extern signed short v9 (signed short, signed short, signed char);
extern signed short (*v10) (signed short, signed short, signed char);
extern unsigned char v11 (signed short, signed int, unsigned char);
extern unsigned char (*v12) (signed short, signed int, unsigned char);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned int v15 (unsigned char, signed short, unsigned int);
extern unsigned int (*v16) (unsigned char, signed short, unsigned int);
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
extern unsigned short v23 (unsigned short, signed short, unsigned char);
extern unsigned short (*v24) (unsigned short, signed short, unsigned char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v29 (unsigned short, signed short, signed int, unsigned char);
void (*v30) (unsigned short, signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v120 = 0;
signed char v119 = -4;
unsigned int v118 = 5U;

void v29 (unsigned short v121, signed short v122, signed int v123, unsigned char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 1;
signed char v126 = 2;
signed char v125 = 0;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed char v17 (signed char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 2;
signed int v130 = -1;
unsigned char v129 = 6;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}
