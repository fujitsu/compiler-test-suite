#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed short v5 (unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned int, unsigned short);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (signed int, unsigned short, unsigned char, signed char);
extern void (*v10) (signed int, unsigned short, unsigned char, signed char);
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
extern signed int v13 (unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned int);
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
extern unsigned char v17 (unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int);
extern signed int v19 (unsigned char, signed int, unsigned short, signed int);
extern signed int (*v20) (unsigned char, signed int, unsigned short, signed int);
extern signed short v23 (signed char, unsigned short);
extern signed short (*v24) (signed char, unsigned short);
extern unsigned int v25 (signed char, signed int, signed char, signed short);
extern unsigned int (*v26) (signed char, signed int, signed char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 5;
signed char v129 = -1;
signed short v128 = -1;

void v15 (unsigned short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 7U;
signed char v133 = -4;
unsigned char v132 = 7;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed short v137 = 2;
signed int v136 = -3;
unsigned short v135 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
