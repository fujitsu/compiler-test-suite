#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char, signed char, unsigned int);
extern unsigned int (*v4) (signed char, signed char, unsigned int);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
signed char v9 (signed char, signed short);
signed char (*v10) (signed char, signed short) = v9;
extern void v11 (signed short);
extern void (*v12) (signed short);
extern void v17 (signed char);
extern void (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed char, unsigned char, signed short);
extern signed short (*v24) (signed char, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v128 = -2;
unsigned char v127 = 3;
unsigned short v126 = 4;

signed char v9 (signed char v129, signed short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 3;
unsigned short v132 = 7;
signed short v131 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned char v136 = 6;
unsigned short v135 = 4;
unsigned short v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
