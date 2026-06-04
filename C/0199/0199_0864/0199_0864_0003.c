#include <stdlib.h>
void v3 (signed int);
void (*v4) (signed int) = v3;
extern void v5 (signed int, unsigned int, signed char, unsigned char);
extern void (*v6) (signed int, unsigned int, signed char, unsigned char);
extern signed int v7 (signed char, signed short, signed int, signed char);
extern signed int (*v8) (signed char, signed short, signed int, signed char);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned short v15 (signed int, signed char);
extern unsigned short (*v16) (signed int, signed char);
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
extern signed int v19 (unsigned char, signed int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned char, signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short, signed short);
extern unsigned int (*v24) (unsigned short, signed short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned short, signed short, signed short, unsigned char);
extern void (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v128 = 7U;
unsigned short v127 = 7;
unsigned char v126 = 7;

unsigned short v25 (void)
{
{
for (;;) {
signed char v131 = 0;
unsigned short v130 = 6;
signed short v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -2;
signed char v134 = -2;
unsigned char v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
