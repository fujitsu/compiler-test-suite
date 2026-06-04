#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned int, signed short);
extern void (*v2) (unsigned short, signed int, unsigned int, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed char);
extern void (*v18) (signed char);
signed short v19 (signed char, signed int);
signed short (*v20) (signed char, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern unsigned int v29 (unsigned int, unsigned char);
extern unsigned int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v82 = 1;
signed char v81 = -2;
unsigned int v80 = 1U;

signed short v19 (signed char v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 4;
unsigned int v86 = 2U;
signed char v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
signed int v90 = 2;
unsigned char v89 = 0;
unsigned short v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
