#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
void v7 (signed int, unsigned short, signed char);
void (*v8) (signed int, unsigned short, signed char) = v7;
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern unsigned char v13 (unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, signed char);
extern signed int v15 (signed short, signed int, signed int);
extern signed int (*v16) (signed short, signed int, signed int);
extern signed char v17 (signed int, unsigned int);
extern signed char (*v18) (signed int, unsigned int);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern signed short v21 (unsigned int, unsigned char, signed char, signed short);
extern signed short (*v22) (unsigned int, unsigned char, signed char, signed short);
extern void v23 (signed char, signed short, unsigned short, signed char);
extern void (*v24) (signed char, signed short, unsigned short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int, unsigned int, signed int);
extern unsigned char (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = 0;
signed char v116 = -2;
signed int v115 = 1;

unsigned int v11 (signed char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 4;
unsigned short v120 = 2;
unsigned char v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v122, unsigned short v123, signed char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
unsigned int v126 = 0U;
signed int v125 = -3;
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
