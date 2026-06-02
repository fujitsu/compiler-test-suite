#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned int);
extern unsigned int (*v2) (unsigned short, signed int, unsigned int);
extern void v3 (unsigned short, unsigned char, signed short, unsigned int);
extern void (*v4) (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
signed short v7 (unsigned short, signed int, signed int, unsigned char);
signed short (*v8) (unsigned short, signed int, signed int, unsigned char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned int, signed short);
extern signed short (*v16) (unsigned int, signed short);
extern void v17 (signed char);
extern void (*v18) (signed char);
void v19 (signed short, unsigned char, unsigned char, signed int);
void (*v20) (signed short, unsigned char, unsigned char, signed int) = v19;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v26) (signed char, unsigned char, unsigned short, unsigned char);
signed short v27 (unsigned int, signed char, unsigned short);
signed short (*v28) (unsigned int, signed char, unsigned short) = v27;
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 1;
signed int v120 = 1;
signed short v119 = 3;

signed short v27 (unsigned int v122, signed char v123, unsigned short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 0;
signed int v126 = -1;
signed int v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v128, unsigned char v129, unsigned char v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 1U;
unsigned int v133 = 5U;
signed short v132 = 1;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v135, signed int v136, signed int v137, unsigned char v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 2;
unsigned char v140 = 2;
signed int v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
