#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern void v3 (unsigned int, signed int, unsigned char, signed char);
extern void (*v4) (unsigned int, signed int, unsigned char, signed char);
extern signed int v5 (unsigned short, unsigned char, unsigned int, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned int, signed char);
unsigned short v7 (unsigned short, signed char);
unsigned short (*v8) (unsigned short, signed char) = v7;
extern signed int v9 (unsigned char, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned char, unsigned short, unsigned char, signed char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned char v13 (signed short, unsigned int, signed int, signed int);
extern unsigned char (*v14) (signed short, unsigned int, signed int, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
void v23 (unsigned short, signed short, unsigned char, unsigned char);
void (*v24) (unsigned short, signed short, unsigned char, unsigned char) = v23;
extern signed short v25 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, signed short, unsigned short, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed int, unsigned short, signed short, unsigned short);
extern unsigned int (*v30) (signed int, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 6;
unsigned char v117 = 4;
signed char v116 = 2;

void v23 (unsigned short v119, signed short v120, unsigned char v121, unsigned char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 2;
signed char v124 = -4;
signed char v123 = 1;
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

unsigned int v11 (void)
{
{
for (;;) {
unsigned short v128 = 7;
unsigned short v127 = 1;
signed int v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -2;
signed short v132 = -1;
signed short v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
