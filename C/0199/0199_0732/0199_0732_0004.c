#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
unsigned int v19 (signed short, unsigned short, unsigned int, signed char);
unsigned int (*v20) (signed short, unsigned short, unsigned int, signed char) = v19;
extern signed char v21 (signed char, unsigned int);
extern signed char (*v22) (signed char, unsigned int);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
extern unsigned short v29 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = -3;
unsigned int v119 = 4U;
signed short v118 = 3;

unsigned int v19 (signed short v121, unsigned short v122, unsigned int v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 5;
unsigned char v126 = 5;
signed int v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
