#include <stdlib.h>
extern void v1 (signed char, signed int, signed short);
extern void (*v2) (signed char, signed int, signed short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned char, signed char, unsigned int);
extern signed char (*v16) (unsigned char, signed char, unsigned int);
extern signed short v19 (signed char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (signed char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned short);
extern void (*v24) (unsigned short, unsigned short);
extern unsigned short v25 (unsigned int, signed int, unsigned char);
extern unsigned short (*v26) (unsigned int, signed int, unsigned char);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned short);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 5;
unsigned short v89 = 3;
unsigned short v88 = 6;

void v7 (unsigned short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
unsigned short v93 = 6;
unsigned char v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned short v97 = 5;
unsigned int v96 = 4U;
unsigned int v95 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
