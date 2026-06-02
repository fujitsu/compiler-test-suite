#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (signed int, signed short);
extern signed char (*v6) (signed int, signed short);
signed int v7 (signed char);
signed int (*v8) (signed char) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern signed short v13 (signed int, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed int);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (signed char, signed char, unsigned int);
extern signed short (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 1U;
unsigned int v120 = 0U;
unsigned char v119 = 0;

void v9 (void)
{
{
for (;;) {
signed char v124 = 3;
unsigned char v123 = 6;
signed short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 1;
signed short v127 = -3;
unsigned short v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
