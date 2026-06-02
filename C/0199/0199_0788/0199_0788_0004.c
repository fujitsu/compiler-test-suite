#include <stdlib.h>
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
extern unsigned char v5 (signed short, signed short, signed short);
extern unsigned char (*v6) (signed short, signed short, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short, unsigned short, unsigned char);
extern void (*v10) (signed short, unsigned short, unsigned char);
extern void v11 (unsigned int, unsigned short, unsigned char);
extern void (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
void v19 (unsigned short, signed short);
void (*v20) (unsigned short, signed short) = v19;
signed short v21 (signed char, unsigned int, unsigned char, signed int);
signed short (*v22) (signed char, unsigned int, unsigned char, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed short, signed int, signed char, unsigned int);
extern signed int (*v26) (signed short, signed int, signed char, unsigned int);
extern signed short v27 (signed char, signed char);
extern signed short (*v28) (signed char, signed char);
extern signed short v29 (signed short, signed int, unsigned char, signed short);
extern signed short (*v30) (signed short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -4;
unsigned short v124 = 5;
signed int v123 = -4;

signed short v21 (signed char v126, unsigned int v127, unsigned char v128, signed int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 3;
signed int v131 = -2;
unsigned char v130 = 7;
trace++;
switch (trace)
{
case 4: 
return v132;
default: abort ();
}
}
}
}

void v19 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 5;
unsigned char v136 = 1;
unsigned short v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 4;
unsigned char v140 = 2;
unsigned char v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
