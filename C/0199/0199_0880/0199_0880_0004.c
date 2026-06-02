#include <stdlib.h>
extern signed short v1 (unsigned short, signed char);
extern signed short (*v2) (unsigned short, signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (signed short, signed short, signed short, signed int);
void (*v6) (signed short, signed short, signed short, signed int) = v5;
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
signed int v11 (unsigned int, signed short, signed short, unsigned int);
signed int (*v12) (unsigned int, signed short, signed short, unsigned int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short, unsigned short);
extern void v17 (signed short, signed short, signed short);
extern void (*v18) (signed short, signed short, signed short);
extern unsigned char v19 (signed char, signed char, signed short);
extern unsigned char (*v20) (signed char, signed char, signed short);
void v21 (unsigned short);
void (*v22) (unsigned short) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -1;
unsigned int v120 = 4U;
signed char v119 = -4;

void v21 (unsigned short v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 1;
unsigned char v124 = 7;
unsigned char v123 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v126, signed short v127, signed short v128, unsigned int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 2;
signed int v131 = 2;
signed short v130 = -3;
trace++;
switch (trace)
{
case 2: 
return v131;
default: abort ();
}
}
}
}

void v5 (signed short v133, signed short v134, signed short v135, signed int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = -2;
unsigned char v138 = 6;
unsigned int v137 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
