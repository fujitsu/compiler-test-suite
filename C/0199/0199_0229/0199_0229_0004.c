#include <stdlib.h>
extern void v1 (unsigned short, signed short);
extern void (*v2) (unsigned short, signed short);
signed short v3 (unsigned short, unsigned int, unsigned short, unsigned short);
signed short (*v4) (unsigned short, unsigned int, unsigned short, unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed int, signed char);
extern signed int (*v12) (signed int, signed char);
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed int, signed short);
extern unsigned short (*v18) (signed int, signed short);
extern signed char v19 (signed int, signed int, unsigned short, unsigned short);
extern signed char (*v20) (signed int, signed int, unsigned short, unsigned short);
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
extern signed char v23 (unsigned char, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v130 = -1;
signed int v129 = 1;
unsigned char v128 = 3;

signed short v3 (unsigned short v131, unsigned int v132, unsigned short v133, unsigned short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 2;
unsigned short v136 = 2;
unsigned short v135 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
