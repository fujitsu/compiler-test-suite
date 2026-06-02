#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern unsigned int v7 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, unsigned short, unsigned int, unsigned int);
extern signed int v9 (unsigned short, unsigned int, signed int);
extern signed int (*v10) (unsigned short, unsigned int, signed int);
unsigned short v11 (signed char, unsigned char);
unsigned short (*v12) (signed char, unsigned char) = v11;
extern void v13 (unsigned short, signed int, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v19 (signed short, signed char);
extern unsigned short (*v20) (signed short, signed char);
extern void v21 (unsigned char, signed short, signed char, unsigned int);
extern void (*v22) (unsigned char, signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 7;
signed int v121 = 2;
unsigned char v120 = 0;

unsigned short v11 (signed char v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
unsigned char v126 = 1;
unsigned short v125 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
