#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned short, unsigned int, unsigned short);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern void v9 (signed char, unsigned int, signed char);
extern void (*v10) (signed char, unsigned int, signed char);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
unsigned int v13 (unsigned short, signed char);
unsigned int (*v14) (unsigned short, signed char) = v13;
extern signed char v15 (signed short, unsigned int, signed int, signed char);
extern signed char (*v16) (signed short, unsigned int, signed int, signed char);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned char v19 (signed int, unsigned short, signed short);
extern unsigned char (*v20) (signed int, unsigned short, signed short);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned short v25 (signed int, unsigned int, signed int);
extern unsigned short (*v26) (signed int, unsigned int, signed int);
extern unsigned char v27 (signed int, signed short);
extern unsigned char (*v28) (signed int, signed short);
extern signed char v29 (unsigned int, unsigned char, signed char, unsigned int);
extern signed char (*v30) (unsigned int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v136 = 6U;
signed char v135 = -2;
signed int v134 = 1;

signed short v23 (void)
{
{
for (;;) {
signed int v139 = -3;
signed char v138 = 2;
unsigned int v137 = 6U;
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
signed char v142 = 0;
unsigned char v141 = 0;
signed int v140 = 0;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v143, signed char v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 3;
unsigned char v146 = 2;
signed char v145 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
