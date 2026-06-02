#include <stdlib.h>
unsigned int v1 (signed int, unsigned char, signed char);
unsigned int (*v2) (signed int, unsigned char, signed char) = v1;
void v3 (unsigned int);
void (*v4) (unsigned int) = v3;
extern signed char v5 (signed char, unsigned short, unsigned char);
extern signed char (*v6) (signed char, unsigned short, unsigned char);
extern signed int v7 (signed short, unsigned short, signed short);
extern signed int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char, signed char, signed short);
extern unsigned int (*v14) (unsigned char, signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = 3;
signed short v117 = 2;
signed short v116 = -3;

void v3 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 5;
signed char v121 = 0;
signed short v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v123, unsigned char v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 3;
unsigned short v127 = 0;
unsigned short v126 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v129;
signed char v130;
signed short v131;
unsigned int v132;
v129 = 5 - 3;
v130 = -2 - v125;
v131 = v128 + -1;
v132 = v13 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 2: 
{
unsigned short v133;
v133 = v9 ();
history[history_index++] = (int)v133;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}
