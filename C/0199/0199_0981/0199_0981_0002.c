#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed char);
extern unsigned char (*v2) (unsigned short, unsigned char, signed char);
extern unsigned short v3 (signed int, signed int, signed char);
extern unsigned short (*v4) (signed int, signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern void v9 (unsigned int, signed int, unsigned char);
extern void (*v10) (unsigned int, signed int, unsigned char);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
signed int v13 (unsigned char, signed char, signed short, signed int);
signed int (*v14) (unsigned char, signed char, signed short, signed int) = v13;
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned char v21 (signed int, signed int);
extern unsigned char (*v22) (signed int, signed int);
extern unsigned short v23 (unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = 0;
unsigned int v80 = 5U;
signed int v79 = -2;

signed int v13 (unsigned char v82, signed char v83, signed short v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 2U;
unsigned short v87 = 5;
signed short v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
