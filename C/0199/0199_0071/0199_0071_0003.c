#include <stdlib.h>
extern unsigned int v1 (signed char, signed char, unsigned int, signed short);
extern unsigned int (*v2) (signed char, signed char, unsigned int, signed short);
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed char v19 (unsigned int, unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned short v21 (signed short, signed char, signed char, signed int);
extern unsigned short (*v22) (signed short, signed char, signed char, signed int);
unsigned char v23 (signed short, signed int);
unsigned char (*v24) (signed short, signed int) = v23;
extern unsigned short v27 (unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (unsigned int, signed char, unsigned int);
extern unsigned short v29 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v81 = 1;
unsigned short v80 = 3;
unsigned short v79 = 4;

unsigned char v23 (signed short v82, signed int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 0;
unsigned char v85 = 2;
signed short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v89 = 2;
unsigned short v88 = 7;
unsigned short v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
