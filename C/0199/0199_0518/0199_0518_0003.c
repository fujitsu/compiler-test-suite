#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v5 (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char (*v6) (signed char, unsigned int, unsigned int, unsigned short);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern void v9 (signed int, signed int, unsigned int, signed int);
extern void (*v10) (signed int, signed int, unsigned int, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned char, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int, signed char);
extern signed char (*v16) (signed int, unsigned int, unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed char, signed char, signed int);
extern signed char (*v24) (signed char, signed char, signed int);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned char, unsigned char);
extern void (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v122 = 5;
unsigned short v121 = 5;
unsigned short v120 = 3;

unsigned char v7 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -3;
signed char v125 = -1;
signed char v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
