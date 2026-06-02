#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, unsigned int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, unsigned int, signed char, signed short);
extern signed char v7 (signed int, unsigned short, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned short);
extern signed short v9 (signed short, signed short);
extern signed short (*v10) (signed short, signed short);
extern signed short v11 (unsigned char, signed char, unsigned short);
extern signed short (*v12) (unsigned char, signed char, unsigned short);
extern void v13 (signed short, unsigned char, signed int, unsigned short);
extern void (*v14) (signed short, unsigned char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, signed short, unsigned char, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed int v21 (signed char, unsigned short);
signed int (*v22) (signed char, unsigned short) = v21;
extern unsigned int v23 (signed short, unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, signed int, unsigned int);
extern unsigned char v25 (signed short, unsigned int, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short);
unsigned short v27 (unsigned short, signed char, signed short);
unsigned short (*v28) (unsigned short, signed char, signed short) = v27;
extern unsigned short v29 (signed int, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v135 = 1;
signed int v134 = -1;
signed short v133 = -2;

unsigned short v27 (unsigned short v136, signed char v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 5U;
unsigned char v140 = 7;
signed char v139 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v142, unsigned short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 7;
unsigned short v145 = 4;
unsigned char v144 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
