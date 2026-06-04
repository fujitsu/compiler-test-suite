#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v23 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned short, unsigned int);
extern signed char v25 (unsigned short, unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int v27 (signed char, signed char, signed int);
extern unsigned int (*v28) (signed char, signed char, signed int);
extern signed short v29 (signed char, unsigned short, signed int, signed char);
extern signed short (*v30) (signed char, unsigned short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 5U;
unsigned int v128 = 1U;
unsigned short v127 = 7;

void v15 (void)
{
{
for (;;) {
signed int v132 = -3;
signed int v131 = 3;
unsigned short v130 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 1;
unsigned int v135 = 2U;
unsigned short v134 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
