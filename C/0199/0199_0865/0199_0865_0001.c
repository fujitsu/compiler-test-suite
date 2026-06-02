#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char, signed char);
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned short, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
signed char v13 (signed short, signed char, signed char);
signed char (*v14) (signed short, signed char, signed char) = v13;
extern signed short v15 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern signed char v19 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned char, unsigned short, signed int);
extern void v21 (signed int, unsigned char, signed short, signed char);
extern void (*v22) (signed int, unsigned char, signed short, signed char);
extern signed char v23 (signed int, signed short);
extern signed char (*v24) (signed int, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 6;
unsigned short v81 = 7;
signed short v80 = 1;

signed char v13 (signed short v83, signed char v84, signed char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 1;
signed short v87 = -2;
unsigned char v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
