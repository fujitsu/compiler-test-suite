#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (signed int, unsigned char);
extern signed int (*v4) (signed int, unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern void v19 (signed char, signed short, signed int, signed char);
extern void (*v20) (signed char, signed short, signed int, signed char);
extern signed short v21 (signed int, unsigned char, unsigned short);
extern signed short (*v22) (signed int, unsigned char, unsigned short);
extern signed short v25 (unsigned char, signed char, unsigned int);
extern signed short (*v26) (unsigned char, signed char, unsigned int);
extern signed int v27 (unsigned short, signed int, signed short, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 0U;
unsigned char v120 = 7;
unsigned short v119 = 6;

signed char v17 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -3;
unsigned char v124 = 6;
unsigned char v123 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
