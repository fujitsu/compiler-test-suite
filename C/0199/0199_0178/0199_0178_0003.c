#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v3 (unsigned char);
unsigned int (*v4) (unsigned char) = v3;
extern unsigned int v5 (signed char, signed short, signed char, unsigned short);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned short);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
extern unsigned short v9 (unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char);
extern unsigned char v11 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v12) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v13 (signed char, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short);
extern signed char v15 (signed int, unsigned short);
extern signed char (*v16) (signed int, unsigned short);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (unsigned short, signed int);
extern unsigned int (*v26) (unsigned short, signed int);
extern unsigned char v27 (signed short, signed int);
extern unsigned char (*v28) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = -1;
unsigned short v118 = 7;
unsigned short v117 = 1;

unsigned int v3 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 2;
signed int v122 = 2;
signed char v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
