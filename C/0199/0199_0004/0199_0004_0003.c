#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern void v7 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned int, unsigned char, signed int, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed short v15 (unsigned int, unsigned char, signed short);
extern signed short (*v16) (unsigned int, unsigned char, signed short);
signed int v17 (signed short, signed char);
signed int (*v18) (signed short, signed char) = v17;
void v19 (unsigned short, unsigned short, signed short, unsigned int);
void (*v20) (unsigned short, unsigned short, signed short, unsigned int) = v19;
extern signed int v21 (unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned int, signed int, unsigned int);
signed int v23 (signed char, signed char, signed char, unsigned int);
signed int (*v24) (signed char, signed char, signed char, unsigned int) = v23;
extern signed short v25 (signed int, signed short, unsigned int, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned int, unsigned char);
extern void v27 (unsigned char, signed int, unsigned short, signed int);
extern void (*v28) (unsigned char, signed int, unsigned short, signed int);
extern unsigned short v29 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v121 = 2;
signed int v120 = 0;
unsigned short v119 = 5;

signed int v23 (signed char v122, signed char v123, signed char v124, unsigned int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 2;
unsigned short v127 = 3;
signed char v126 = 1;
trace++;
switch (trace)
{
case 1: 
return -1;
case 3: 
return -4;
default: abort ();
}
}
}
}

void v19 (unsigned short v129, unsigned short v130, signed short v131, unsigned int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -2;
signed char v134 = -4;
unsigned int v133 = 0U;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed int v17 (signed short v136, signed char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 2;
signed short v139 = 2;
signed int v138 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed short v143 = -1;
signed short v142 = -2;
unsigned short v141 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
