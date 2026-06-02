#include <stdlib.h>
extern void v1 (signed short, unsigned char);
extern void (*v2) (signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern void v7 (unsigned short, signed char, unsigned int);
extern void (*v8) (unsigned short, signed char, unsigned int);
extern unsigned short v9 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char, signed int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
void v21 (void);
void (*v22) (void) = v21;
extern signed short v23 (unsigned short, unsigned int);
extern signed short (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
signed int v27 (signed short, signed int, signed int);
signed int (*v28) (signed short, signed int, signed int) = v27;
extern unsigned int v29 (signed short, signed int, unsigned int);
extern unsigned int (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v127 = 0;
unsigned int v126 = 1U;
signed char v125 = 2;

signed int v27 (signed short v128, signed int v129, signed int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 3;
signed char v132 = -1;
signed char v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned short v136 = 1;
unsigned int v135 = 1U;
signed int v134 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
