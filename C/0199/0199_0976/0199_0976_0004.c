#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed short v9 (signed char, signed char, signed short);
extern signed short (*v10) (signed char, signed char, signed short);
unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
void v19 (unsigned short);
void (*v20) (unsigned short) = v19;
extern void v21 (unsigned short, unsigned int, signed int);
extern void (*v22) (unsigned short, unsigned int, signed int);
extern unsigned short v23 (signed char, signed int, unsigned int, unsigned int);
extern unsigned short (*v24) (signed char, signed int, unsigned int, unsigned int);
extern signed short v25 (signed char, signed short, signed int);
extern signed short (*v26) (signed char, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 0;
signed short v123 = 1;
signed short v122 = -4;

signed char v29 (void)
{
{
for (;;) {
signed char v127 = -2;
signed int v126 = -2;
unsigned short v125 = 3;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

void v19 (unsigned short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -4;
signed short v130 = 0;
signed short v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v132, unsigned char v133, unsigned short v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 0;
signed short v137 = -3;
signed short v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
