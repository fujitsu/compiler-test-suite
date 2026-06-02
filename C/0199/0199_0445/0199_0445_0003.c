#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned char v5 (signed int, unsigned char, unsigned int, signed char);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int, signed char);
unsigned short v7 (signed short);
unsigned short (*v8) (signed short) = v7;
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned char v11 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (unsigned int, unsigned char, signed short, signed char);
extern signed char (*v18) (unsigned int, unsigned char, signed short, signed char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern signed short v21 (unsigned int, signed char, unsigned short, signed char);
extern signed short (*v22) (unsigned int, signed char, unsigned short, signed char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
void v27 (void);
void (*v28) (void) = v27;
signed int v29 (unsigned int, unsigned int, unsigned short);
signed int (*v30) (unsigned int, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = 1;
signed short v115 = -4;
signed short v114 = 0;

signed int v29 (unsigned int v117, unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 1;
signed short v121 = -3;
unsigned short v120 = 2;
trace++;
switch (trace)
{
case 1: 
return 3;
case 6: 
return 3;
case 8: 
return -4;
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
unsigned char v125 = 7;
unsigned short v124 = 7;
signed char v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v128 = 5;
unsigned char v127 = 3;
signed char v126 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 2U;
signed char v131 = 0;
signed short v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
