#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, signed char);
extern void (*v10) (signed short, signed char);
extern signed int v11 (signed short, signed char, signed char);
extern signed int (*v12) (signed short, signed char, signed char);
extern unsigned char v13 (signed int, unsigned short, signed short, unsigned int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern signed short v15 (signed short, signed short);
extern signed short (*v16) (signed short, signed short);
extern signed int v19 (signed short, unsigned short, signed short);
extern signed int (*v20) (signed short, unsigned short, signed short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned short v29 (unsigned char, unsigned short);
unsigned short (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 1;
signed int v121 = 2;
signed short v120 = 0;

unsigned short v29 (unsigned char v123, unsigned short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 7;
signed int v126 = 1;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned char v130 = 2;
unsigned short v129 = 5;
unsigned char v128 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
