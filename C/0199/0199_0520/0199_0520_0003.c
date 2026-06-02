#include <stdlib.h>
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
extern signed short v7 (unsigned char, signed int, unsigned int);
extern signed short (*v8) (unsigned char, signed int, unsigned int);
extern unsigned short v9 (unsigned int, signed short, signed char, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed char, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned short, signed short, signed short);
signed char v17 (unsigned int, signed char, signed char);
signed char (*v18) (unsigned int, signed char, signed char) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (signed char, signed int, unsigned int, unsigned int);
extern void (*v24) (signed char, signed int, unsigned int, unsigned int);
signed char v25 (unsigned char, signed short, unsigned char, signed short);
signed char (*v26) (unsigned char, signed short, unsigned char, signed short) = v25;
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
extern void v29 (signed short, signed char, signed short, signed short);
extern void (*v30) (signed short, signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 3;
signed char v119 = -2;
unsigned char v118 = 4;

signed char v25 (unsigned char v121, signed short v122, unsigned char v123, signed short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 4;
unsigned char v126 = 7;
signed char v125 = -1;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned int v130 = 4U;
signed int v129 = 0;
unsigned short v128 = 3;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed char v17 (unsigned int v131, signed char v132, signed char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -1;
unsigned short v135 = 1;
unsigned short v134 = 2;
trace++;
switch (trace)
{
case 9: 
return 1;
default: abort ();
}
}
}
}
