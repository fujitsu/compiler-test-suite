#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
signed int v5 (signed short, unsigned char, signed char);
signed int (*v6) (signed short, unsigned char, signed char) = v5;
extern unsigned short v7 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed int v11 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned short, signed int, unsigned char);
extern signed short (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern void v19 (void);
extern void (*v20) (void);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned short v25 (unsigned int, unsigned short, signed int);
extern unsigned short (*v26) (unsigned int, unsigned short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned char v29 (unsigned int, signed short);
unsigned char (*v30) (unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v119 = 0;
signed short v118 = 2;
unsigned char v117 = 5;

unsigned char v29 (unsigned int v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 1;
unsigned char v123 = 7;
signed int v122 = -1;
trace++;
switch (trace)
{
case 7: 
return v123;
default: abort ();
}
}
}
}

signed short v21 (signed short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 6;
signed int v127 = 1;
unsigned short v126 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v129, unsigned char v130, signed char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 2;
signed char v133 = 3;
signed int v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
