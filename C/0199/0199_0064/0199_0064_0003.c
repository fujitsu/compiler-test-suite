#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned char, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned char, signed char);
extern signed int v3 (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
signed int v7 (signed int, unsigned int, signed int);
signed int (*v8) (signed int, unsigned int, signed int) = v7;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned short v15 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int, signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern unsigned int v25 (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned int (*v26) (unsigned int, unsigned int, unsigned int, signed int);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = 1;
unsigned char v106 = 6;
signed int v105 = -4;

signed int v7 (signed int v108, unsigned int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 5;
unsigned short v112 = 7;
signed int v111 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
