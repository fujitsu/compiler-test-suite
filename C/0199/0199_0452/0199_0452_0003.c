#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, unsigned char, unsigned short);
extern unsigned int (*v2) (signed char, signed int, unsigned char, unsigned short);
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
extern signed int v5 (signed int, signed short, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed int, signed char, unsigned short);
extern void (*v10) (signed int, signed char, unsigned short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed short v19 (signed short, unsigned short);
signed short (*v20) (signed short, unsigned short) = v19;
extern signed char v21 (unsigned char, unsigned char, signed short, signed int);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed char v25 (unsigned short, unsigned int, unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (signed short, signed char);
extern unsigned char (*v28) (signed short, signed char);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v132 = 2;
signed int v131 = -1;
signed short v130 = 2;

signed short v19 (signed short v133, unsigned short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -1;
unsigned int v136 = 4U;
signed short v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
