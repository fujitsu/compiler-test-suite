#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
unsigned int v5 (unsigned short, unsigned char);
unsigned int (*v6) (unsigned short, unsigned char) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned int, signed int);
extern void (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern void v17 (signed char, signed int, unsigned int);
extern void (*v18) (signed char, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (signed char, unsigned char, signed short);
extern unsigned short (*v26) (signed char, unsigned char, signed short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 6;
unsigned int v128 = 7U;
unsigned int v127 = 1U;

signed char v15 (void)
{
{
for (;;) {
unsigned short v132 = 7;
unsigned char v131 = 5;
unsigned int v130 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -4;
unsigned int v136 = 3U;
unsigned short v135 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
