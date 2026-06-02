#include <stdlib.h>
extern signed int v1 (signed short, signed char, unsigned short);
extern signed int (*v2) (signed short, signed char, unsigned short);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
signed short v11 (signed int, unsigned short);
signed short (*v12) (signed int, unsigned short) = v11;
extern void v13 (void);
extern void (*v14) (void);
unsigned char v15 (unsigned int);
unsigned char (*v16) (unsigned int) = v15;
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
extern signed short v19 (signed char, signed char, unsigned char, signed int);
extern signed short (*v20) (signed char, signed char, unsigned char, signed int);
extern signed short v21 (signed int, unsigned char, unsigned char, unsigned char);
extern signed short (*v22) (signed int, unsigned char, unsigned char, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v25 (unsigned char, signed short, signed char);
extern unsigned short (*v26) (unsigned char, signed short, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 6;
unsigned int v118 = 4U;
unsigned char v117 = 5;

unsigned short v17 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 1U;
signed int v122 = -3;
signed short v121 = -4;
trace++;
switch (trace)
{
case 11: 
return v120;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
signed int v126 = 2;
signed int v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v128, unsigned short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
unsigned short v131 = 5;
signed char v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned char v135 = 1;
signed char v134 = 3;
signed short v133 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
