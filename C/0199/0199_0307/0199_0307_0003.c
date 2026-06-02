#include <stdlib.h>
extern signed char v1 (signed short, unsigned char);
extern signed char (*v2) (signed short, unsigned char);
void v3 (unsigned short, signed int);
void (*v4) (unsigned short, signed int) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern unsigned short v11 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
extern void v17 (unsigned char, unsigned int, unsigned int, unsigned short);
extern void (*v18) (unsigned char, unsigned int, unsigned int, unsigned short);
extern signed char v19 (unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed short);
extern signed char v21 (unsigned int, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char);
extern signed int v23 (signed char, unsigned short);
extern signed int (*v24) (signed char, unsigned short);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
extern signed int v29 (signed int, signed char, signed short);
extern signed int (*v30) (signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v128 = 1;
signed char v127 = -2;
unsigned short v126 = 0;

unsigned char v25 (void)
{
{
for (;;) {
unsigned char v131 = 6;
signed char v130 = -2;
unsigned char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v134 = 6;
unsigned char v133 = 3;
unsigned short v132 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v135, signed int v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 2;
signed int v138 = -1;
unsigned short v137 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
