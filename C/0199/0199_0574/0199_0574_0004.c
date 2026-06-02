#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned char);
extern unsigned char (*v2) (signed char, signed short, unsigned char);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
signed short v7 (signed char, signed int);
signed short (*v8) (signed char, signed int) = v7;
extern unsigned char v9 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v10) (signed int, signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (unsigned char, signed int, unsigned short, unsigned short);
extern unsigned char (*v18) (unsigned char, signed int, unsigned short, unsigned short);
extern signed short v19 (signed char, unsigned int);
extern signed short (*v20) (signed char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
unsigned short v23 (signed int, unsigned char, unsigned int, signed short);
unsigned short (*v24) (signed int, unsigned char, unsigned int, signed short) = v23;
extern unsigned int v25 (signed short, unsigned char, signed char);
extern unsigned int (*v26) (signed short, unsigned char, signed char);
extern unsigned int v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char, signed int);
extern void (*v30) (signed short, unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 0;
signed int v133 = 1;
unsigned char v132 = 2;

unsigned short v23 (signed int v135, unsigned char v136, unsigned int v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 2U;
signed short v140 = 2;
signed short v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed char v142, signed int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -3;
signed char v145 = 2;
signed int v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
