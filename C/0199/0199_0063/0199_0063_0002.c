#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned char v3 (unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned short, unsigned char, signed short);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
signed int v7 (unsigned char);
signed int (*v8) (unsigned char) = v7;
signed short v9 (void);
signed short (*v10) (void) = v9;
extern void v11 (signed char, signed int, signed int, signed int);
extern void (*v12) (signed char, signed int, signed int, signed int);
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (unsigned char, signed short, unsigned char);
extern unsigned int (*v16) (unsigned char, signed short, unsigned char);
extern unsigned int v17 (signed char, unsigned short);
extern unsigned int (*v18) (signed char, unsigned short);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern signed int v27 (unsigned char, unsigned char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v121 = 0;
unsigned char v120 = 0;
signed char v119 = 2;

signed short v9 (void)
{
{
for (;;) {
signed short v124 = 3;
unsigned short v123 = 3;
unsigned int v122 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 1;
signed int v127 = -4;
signed char v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
