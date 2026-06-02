#include <stdlib.h>
extern signed char v1 (unsigned int, signed char);
extern signed char (*v2) (unsigned int, signed char);
extern unsigned char v3 (unsigned int, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned char, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern void v7 (void);
extern void (*v8) (void);
signed int v11 (unsigned char, unsigned short, signed short, unsigned int);
signed int (*v12) (unsigned char, unsigned short, signed short, unsigned int) = v11;
extern signed short v13 (signed char, signed char, signed short);
extern signed short (*v14) (signed char, signed char, signed short);
extern unsigned short v15 (unsigned int, signed char, signed short);
extern unsigned short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (signed int, signed short);
extern signed char (*v18) (signed int, signed short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v136 = 7U;
unsigned short v135 = 1;
unsigned short v134 = 7;

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v139 = 1;
signed int v138 = -1;
signed int v137 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v140, unsigned short v141, signed short v142, unsigned int v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = -3;
unsigned short v145 = 3;
signed int v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
