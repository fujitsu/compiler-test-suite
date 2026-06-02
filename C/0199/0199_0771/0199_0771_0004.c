#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned int v3 (unsigned char, unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
void v15 (signed int, signed int, signed int);
void (*v16) (signed int, signed int, signed int) = v15;
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
void v19 (unsigned int, signed int);
void (*v20) (unsigned int, signed int) = v19;
extern unsigned int v23 (signed int, unsigned char, signed int);
extern unsigned int (*v24) (signed int, unsigned char, signed int);
extern void v25 (unsigned short, signed int, unsigned char);
extern void (*v26) (unsigned short, signed int, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
extern signed int v29 (signed char, signed short, signed short);
extern signed int (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 2;
unsigned short v128 = 6;
unsigned char v127 = 6;

void v19 (unsigned int v130, signed int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 4U;
unsigned short v133 = 7;
signed short v132 = 0;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

void v15 (signed int v135, signed int v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -1;
signed short v139 = 2;
unsigned short v138 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
