#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
extern signed int v3 (signed int, unsigned char, unsigned int);
extern signed int (*v4) (signed int, unsigned char, unsigned int);
signed int v5 (unsigned short);
signed int (*v6) (unsigned short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed int, unsigned int);
extern signed short (*v10) (signed int, unsigned int);
extern signed short v11 (signed char, signed char, unsigned int, signed char);
extern signed short (*v12) (signed char, signed char, unsigned int, signed char);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, unsigned int, signed int);
extern signed int (*v22) (signed short, signed short, unsigned int, signed int);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern unsigned short v29 (signed short, unsigned short, signed char);
extern unsigned short (*v30) (signed short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 2;
signed char v80 = 0;
unsigned int v79 = 6U;

signed int v25 (void)
{
{
for (;;) {
unsigned short v84 = 1;
unsigned short v83 = 6;
unsigned char v82 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -4;
unsigned int v87 = 1U;
signed char v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
