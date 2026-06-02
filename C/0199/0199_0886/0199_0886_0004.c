#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed char v3 (unsigned int, signed char, signed char);
extern signed char (*v4) (unsigned int, signed char, signed char);
extern unsigned int v7 (unsigned short, signed int, signed short, unsigned char);
extern unsigned int (*v8) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v9 (unsigned char, signed char, signed char);
extern unsigned int (*v10) (unsigned char, signed char, signed char);
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (signed char, unsigned int, signed char);
extern signed int (*v14) (signed char, unsigned int, signed char);
extern signed short v15 (unsigned int, unsigned int, unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned int, unsigned int, unsigned short);
void v17 (signed short, unsigned char);
void (*v18) (signed short, unsigned char) = v17;
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
unsigned int v21 (signed int, unsigned char, unsigned short, signed int);
unsigned int (*v22) (signed int, unsigned char, unsigned short, signed int) = v21;
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (signed int, signed char, signed short, signed short);
extern signed short (*v26) (signed int, signed char, signed short, signed short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 0;
unsigned short v129 = 7;
unsigned char v128 = 6;

unsigned int v21 (signed int v131, unsigned char v132, unsigned short v133, signed int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 3;
unsigned int v136 = 6U;
signed int v135 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v138, unsigned char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = 0;
signed short v141 = 3;
signed int v140 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
