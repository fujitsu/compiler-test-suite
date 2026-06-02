#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
void v5 (signed int, unsigned char, unsigned char);
void (*v6) (signed int, unsigned char, unsigned char) = v5;
extern unsigned short v7 (unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, signed char);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
signed char v17 (unsigned short);
signed char (*v18) (unsigned short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v22) (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = 2;
signed int v126 = 2;
signed int v125 = 2;

signed char v17 (unsigned short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = 0;
signed int v130 = -3;
unsigned short v129 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v132, unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -3;
signed int v136 = 3;
unsigned int v135 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
