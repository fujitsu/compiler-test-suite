#include <stdlib.h>
signed short v1 (signed int, unsigned char);
signed short (*v2) (signed int, unsigned char) = v1;
extern signed int v3 (signed short, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed short);
extern unsigned int v5 (signed int, signed char);
extern unsigned int (*v6) (signed int, signed char);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, signed short, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed short, signed int, signed int);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed short);
extern void v17 (unsigned char, signed int, signed short);
extern void (*v18) (unsigned char, signed int, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern unsigned short v23 (signed int, unsigned char, signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned char, signed int, unsigned int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (signed short, signed char, signed int, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int, signed int);
extern signed char v29 (signed char, unsigned short, unsigned short);
extern signed char (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = 1;
unsigned short v119 = 5;
signed short v118 = 3;

unsigned int v25 (void)
{
{
for (;;) {
unsigned int v123 = 1U;
signed int v122 = -2;
signed char v121 = -2;
trace++;
switch (trace)
{
case 4: 
return 5U;
default: abort ();
}
}
}
}

signed short v1 (signed int v124, unsigned char v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 2;
signed char v127 = -1;
signed char v126 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v129;
signed int v130;
signed short v131;
v129 = v125 + v125;
v130 = v124 + v124;
v131 = 3 + -2;
v17 (v129, v130, v131);
}
break;
case 2: 
{
unsigned short v132;
unsigned short v133;
v132 = 3 + 0;
v133 = v19 (v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
