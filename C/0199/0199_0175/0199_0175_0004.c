#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (signed int, signed short);
signed char (*v6) (signed int, signed short) = v5;
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern signed short v13 (signed int, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed int);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (signed char, signed char, unsigned int);
extern signed short (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v131 = 3;
unsigned int v130 = 6U;
signed short v129 = 2;

signed char v5 (signed int v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 2;
signed short v135 = 2;
unsigned int v134 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
