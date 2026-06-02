#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
extern unsigned int v9 (unsigned short, signed char, signed int, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int, signed int);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v21 (signed int, unsigned int, unsigned short);
extern unsigned short (*v22) (signed int, unsigned int, unsigned short);
extern signed short v23 (unsigned int, signed char);
extern signed short (*v24) (unsigned int, signed char);
unsigned int v25 (unsigned int, signed int, signed char, unsigned char);
unsigned int (*v26) (unsigned int, signed int, signed char, unsigned char) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v117 = 3;
signed char v116 = -2;
signed char v115 = -4;

unsigned char v27 (void)
{
{
for (;;) {
signed char v120 = -1;
signed int v119 = 1;
unsigned char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned int v121, signed int v122, signed char v123, unsigned char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 2;
signed short v126 = -3;
unsigned int v125 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
