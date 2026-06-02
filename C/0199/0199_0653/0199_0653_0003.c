#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, signed short, signed short, unsigned short);
void v3 (signed short, unsigned char, unsigned short);
void (*v4) (signed short, unsigned char, unsigned short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed int, signed char, signed char);
extern signed int (*v8) (unsigned int, signed int, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char, unsigned char);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern void v13 (signed char, signed int);
extern void (*v14) (signed char, signed int);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern void v17 (signed char, signed int, unsigned int, unsigned char);
extern void (*v18) (signed char, signed int, unsigned int, unsigned char);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
signed short v23 (unsigned short);
signed short (*v24) (unsigned short) = v23;
void v25 (unsigned short, unsigned int, signed int, signed int);
void (*v26) (unsigned short, unsigned int, signed int, signed int) = v25;
extern unsigned int v27 (unsigned short, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned short, signed short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 6U;
signed int v113 = -2;
signed char v112 = 1;

void v25 (unsigned short v115, unsigned int v116, signed int v117, signed int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 0;
signed char v120 = 0;
signed char v119 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned short v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 7U;
unsigned char v124 = 7;
unsigned char v123 = 4;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 3;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned int v128 = 4U;
unsigned int v127 = 7U;
unsigned char v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v129, unsigned char v130, unsigned short v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 0;
signed char v133 = 3;
unsigned short v132 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
