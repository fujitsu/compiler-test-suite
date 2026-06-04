#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed short, unsigned char, signed int);
extern unsigned short (*v4) (signed short, unsigned char, signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern unsigned char v11 (unsigned short, signed short, signed char);
extern unsigned char (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
unsigned char v15 (signed char);
unsigned char (*v16) (signed char) = v15;
void v17 (void);
void (*v18) (void) = v17;
unsigned short v21 (signed short, unsigned int);
unsigned short (*v22) (signed short, unsigned int) = v21;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (unsigned short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = 3;
signed char v126 = -3;
unsigned short v125 = 1;

unsigned short v21 (signed short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 1;
unsigned int v131 = 1U;
signed int v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned int v135 = 5U;
signed int v134 = 3;
signed short v133 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 6;
unsigned char v138 = 5;
unsigned char v137 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
