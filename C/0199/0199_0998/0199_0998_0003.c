#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned int);
extern void (*v2) (unsigned int, signed int, signed short, unsigned int);
extern void v3 (signed short, signed int, unsigned char, unsigned char);
extern void (*v4) (signed short, signed int, unsigned char, unsigned char);
unsigned char v5 (unsigned int, unsigned int, unsigned int);
unsigned char (*v6) (unsigned int, unsigned int, unsigned int) = v5;
extern void v7 (unsigned short, signed short, unsigned int, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int, unsigned int);
signed int v9 (unsigned int, unsigned short, unsigned short, signed short);
signed int (*v10) (unsigned int, unsigned short, unsigned short, signed short) = v9;
extern void v11 (signed char, signed int, signed char);
extern void (*v12) (signed char, signed int, signed char);
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v19 (signed char, signed int, signed int, unsigned short);
extern signed int (*v20) (signed char, signed int, signed int, unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned char, unsigned int, signed char, signed short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 3;
signed char v123 = 1;
signed int v122 = 2;

signed int v9 (unsigned int v125, unsigned short v126, unsigned short v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 7;
unsigned short v130 = 1;
signed int v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v132, unsigned int v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 3;
unsigned int v136 = 3U;
signed short v135 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
