#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, signed char, signed short);
extern unsigned int (*v2) (signed int, signed short, signed char, signed short);
extern signed int v3 (signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (signed char, signed char, signed int, unsigned short);
extern void (*v8) (signed char, signed char, signed int, unsigned short);
extern unsigned char v9 (signed int, unsigned short, unsigned char);
extern unsigned char (*v10) (signed int, unsigned short, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, unsigned int, signed short, signed int);
extern unsigned char (*v14) (unsigned int, unsigned int, signed short, signed int);
extern void v15 (signed char, unsigned short, unsigned int);
extern void (*v16) (signed char, unsigned short, unsigned int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned int v19 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v20) (signed short, signed char, unsigned int, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern signed char v23 (unsigned char, signed char, signed char);
extern signed char (*v24) (unsigned char, signed char, signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed int v27 (unsigned short, unsigned int, signed int);
signed int (*v28) (unsigned short, unsigned int, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v107 = 1;
signed short v106 = 2;
signed short v105 = -4;

signed int v27 (unsigned short v108, unsigned int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -3;
unsigned short v112 = 2;
unsigned int v111 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
