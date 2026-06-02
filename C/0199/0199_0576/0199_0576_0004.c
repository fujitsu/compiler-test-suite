#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int, signed char);
extern unsigned int (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed int v9 (signed short, signed int, signed short);
signed int (*v10) (signed short, signed int, signed short) = v9;
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern signed int v13 (unsigned short, unsigned short, unsigned int, signed int);
extern signed int (*v14) (unsigned short, unsigned short, unsigned int, signed int);
extern unsigned int v15 (unsigned short, signed char, signed short);
extern unsigned int (*v16) (unsigned short, signed char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern unsigned int v27 (unsigned short, signed short, signed int);
extern unsigned int (*v28) (unsigned short, signed short, signed int);
extern signed short v29 (signed char, unsigned int, unsigned short);
extern signed short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v131 = -1;
signed short v130 = 1;
unsigned short v129 = 5;

signed int v9 (signed short v132, signed int v133, signed short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 2;
signed int v136 = -2;
signed char v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
