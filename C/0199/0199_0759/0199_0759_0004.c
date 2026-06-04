#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
unsigned int v7 (unsigned int, unsigned char);
unsigned int (*v8) (unsigned int, unsigned char) = v7;
extern signed short v9 (unsigned short, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (unsigned char, signed char, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned int);
signed char v15 (unsigned short, unsigned int, unsigned int, signed short);
signed char (*v16) (unsigned short, unsigned int, unsigned int, signed short) = v15;
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern unsigned char v21 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short v25 (signed int, unsigned int);
extern unsigned short (*v26) (signed int, unsigned int);
extern signed int v27 (unsigned short, signed char, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v129 = 3;
signed int v128 = -2;
signed char v127 = -2;

signed char v15 (unsigned short v130, unsigned int v131, unsigned int v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 1;
unsigned int v135 = 4U;
unsigned char v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v137, unsigned char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 7;
signed char v140 = 2;
unsigned short v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
