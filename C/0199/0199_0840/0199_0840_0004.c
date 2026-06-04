#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (unsigned int, signed int, signed short, signed char);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed char);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v27 (signed short, unsigned short, signed int, signed int);
extern signed short (*v28) (signed short, unsigned short, signed int, signed int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 6U;
signed int v120 = 2;
signed char v119 = 0;

unsigned short v15 (void)
{
{
for (;;) {
unsigned char v124 = 2;
signed char v123 = -3;
unsigned short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned char v127 = 0;
unsigned short v126 = 2;
unsigned int v125 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 3;
signed short v130 = -3;
unsigned short v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
