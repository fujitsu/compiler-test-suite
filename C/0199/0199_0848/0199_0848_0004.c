#include <stdlib.h>
extern unsigned short v1 (signed short, signed short);
extern unsigned short (*v2) (signed short, signed short);
signed char v3 (unsigned int, signed short);
signed char (*v4) (unsigned int, signed short) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned char v7 (unsigned int, signed int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned char, signed short);
extern signed char v9 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed char (*v10) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v11 (unsigned char, unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
void v15 (void);
void (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed int, signed int, unsigned char, unsigned int);
extern signed short (*v20) (signed int, signed int, unsigned char, unsigned int);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned short v23 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern void v27 (signed char, signed short, unsigned char, signed short);
extern void (*v28) (signed char, signed short, unsigned char, signed short);
extern signed char v29 (signed int, unsigned int, signed int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v140 = 0;
unsigned char v139 = 6;
unsigned char v138 = 2;

void v15 (void)
{
{
for (;;) {
signed short v143 = 0;
signed short v142 = -3;
signed short v141 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed char v146 = 2;
unsigned int v145 = 3U;
unsigned short v144 = 3;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v147, signed short v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned char v151 = 3;
unsigned char v150 = 7;
unsigned char v149 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
