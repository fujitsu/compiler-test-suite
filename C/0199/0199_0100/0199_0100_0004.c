#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
unsigned int v7 (unsigned int, signed short, signed int);
unsigned int (*v8) (unsigned int, signed short, signed int) = v7;
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned short, signed int, unsigned int, unsigned char);
extern signed int v17 (signed int);
extern signed int (*v18) (signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed short, unsigned short);
extern unsigned int (*v24) (signed short, unsigned short);
extern unsigned int v25 (signed int, unsigned int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned int, unsigned char);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
signed char v29 (signed int, unsigned int, signed short);
signed char (*v30) (signed int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 2;
signed int v125 = -2;
signed char v124 = 3;

signed char v29 (signed int v127, unsigned int v128, signed short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 5;
unsigned char v131 = 6;
signed char v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v133, signed short v134, signed int v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = 0;
signed int v137 = -1;
unsigned short v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
