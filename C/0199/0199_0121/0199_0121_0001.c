#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned char, signed int, signed int);
extern void (*v12) (unsigned char, signed int, signed int);
signed char v13 (signed int, signed char, unsigned short, unsigned short);
signed char (*v14) (signed int, signed char, unsigned short, unsigned short) = v13;
extern unsigned int v15 (signed char, unsigned int);
extern unsigned int (*v16) (signed char, unsigned int);
extern unsigned int v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned char, signed short, signed short, unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (signed int, unsigned int, signed int, unsigned short);
extern unsigned char (*v22) (signed int, unsigned int, signed int, unsigned short);
extern unsigned char v23 (signed char, unsigned char, signed char);
extern unsigned char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed char, unsigned char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned char, unsigned short);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -3;
signed int v79 = 3;
unsigned char v78 = 5;

signed char v13 (signed int v81, signed char v82, unsigned short v83, unsigned short v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 3;
unsigned char v86 = 4;
signed char v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
