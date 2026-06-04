#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned short, signed char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short, signed char, unsigned short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
signed int v13 (unsigned short, signed char, unsigned char, unsigned char);
signed int (*v14) (unsigned short, signed char, unsigned char, unsigned char) = v13;
extern unsigned short v15 (signed short, unsigned char, unsigned int);
extern unsigned short (*v16) (signed short, unsigned char, unsigned int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v29 (signed int, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v138 = 0;
unsigned short v137 = 6;
signed int v136 = -2;

signed int v23 (void)
{
{
for (;;) {
unsigned int v141 = 2U;
unsigned int v140 = 4U;
unsigned short v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v142, signed char v143, unsigned char v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 3;
signed int v147 = 0;
signed short v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
