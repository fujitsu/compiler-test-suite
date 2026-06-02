#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
extern unsigned short v3 (signed short, unsigned char);
extern unsigned short (*v4) (signed short, unsigned char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed int, unsigned int);
extern signed char (*v8) (signed int, unsigned int);
unsigned char v9 (signed int);
unsigned char (*v10) (signed int) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned char, unsigned short, unsigned short);
extern signed int v15 (unsigned char, signed char);
extern signed int (*v16) (unsigned char, signed char);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
extern signed short v19 (signed short, unsigned short, unsigned int);
extern signed short (*v20) (signed short, unsigned short, unsigned int);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern unsigned int v23 (signed char, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed char);
unsigned short v25 (unsigned short, signed char, unsigned short, unsigned int);
unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned int) = v25;
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 6;
unsigned int v129 = 0U;
unsigned short v128 = 4;

unsigned short v25 (unsigned short v131, signed char v132, unsigned short v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -3;
unsigned char v136 = 1;
signed short v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 0;
signed char v140 = -4;
signed short v139 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
