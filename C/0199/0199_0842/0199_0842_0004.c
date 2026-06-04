#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
signed short v3 (signed char, signed int);
signed short (*v4) (signed char, signed int) = v3;
unsigned short v7 (signed int);
unsigned short (*v8) (signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed short, unsigned int);
extern unsigned char (*v16) (signed short, unsigned int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
unsigned int v19 (unsigned int, unsigned int, signed char);
unsigned int (*v20) (unsigned int, unsigned int, signed char) = v19;
extern unsigned short v21 (signed char, unsigned char, signed short, signed char);
extern unsigned short (*v22) (signed char, unsigned char, signed short, signed char);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v27 (signed char, signed short, signed short, signed short);
extern void (*v28) (signed char, signed short, signed short, signed short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 2U;
unsigned int v120 = 4U;
signed int v119 = 0;

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v124 = 2;
unsigned char v123 = 2;
signed char v122 = 0;
trace++;
switch (trace)
{
case 7: 
return 4U;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v125, unsigned int v126, signed char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 2;
unsigned short v129 = 3;
signed char v128 = 0;
trace++;
switch (trace)
{
case 5: 
return v125;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 6;
signed int v133 = 1;
signed char v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v135, signed int v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 5;
signed int v138 = -1;
unsigned int v137 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
