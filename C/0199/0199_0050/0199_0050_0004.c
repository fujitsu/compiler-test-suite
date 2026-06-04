#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned int v7 (signed int, signed short, unsigned short, signed char);
extern unsigned int (*v8) (signed int, signed short, unsigned short, signed char);
extern void v9 (signed short, signed short);
extern void (*v10) (signed short, signed short);
signed short v11 (signed int);
signed short (*v12) (signed int) = v11;
extern unsigned int v13 (signed short, unsigned char, signed int);
extern unsigned int (*v14) (signed short, unsigned char, signed int);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed short v17 (signed short, unsigned int, unsigned int);
extern signed short (*v18) (signed short, unsigned int, unsigned int);
extern signed int v19 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v20) (unsigned int, signed short, unsigned char, signed short);
extern signed short v23 (signed short, unsigned char, signed short);
extern signed short (*v24) (signed short, unsigned char, signed short);
extern signed short v25 (unsigned char, signed short);
extern signed short (*v26) (unsigned char, signed short);
unsigned short v27 (signed int, unsigned char, unsigned char, signed char);
unsigned short (*v28) (signed int, unsigned char, unsigned char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v135 = -3;
signed short v134 = -2;
unsigned char v133 = 1;

unsigned short v27 (signed int v136, unsigned char v137, unsigned char v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = -3;
signed int v141 = -4;
unsigned int v140 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 4U;
unsigned char v145 = 2;
signed char v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
