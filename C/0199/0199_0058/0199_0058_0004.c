#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned short);
signed char v3 (signed int, signed char);
signed char (*v4) (signed int, signed char) = v3;
extern unsigned int v5 (unsigned short, signed short, unsigned char);
extern unsigned int (*v6) (unsigned short, signed short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed int, unsigned char);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned char);
extern void v11 (unsigned char, signed int, unsigned int, signed int);
extern void (*v12) (unsigned char, signed int, unsigned int, signed int);
void v13 (signed short, unsigned char);
void (*v14) (signed short, unsigned char) = v13;
extern unsigned short v17 (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char v29 (unsigned short, signed int);
extern signed char (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v128 = 5;
unsigned char v127 = 6;
unsigned char v126 = 5;

void v13 (signed short v129, unsigned char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 1;
unsigned short v132 = 0;
signed char v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v134, signed char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 2;
signed char v137 = -1;
signed char v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
