#include <stdlib.h>
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (signed short, unsigned int, unsigned char, unsigned int);
unsigned short (*v8) (signed short, unsigned int, unsigned char, unsigned int) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (signed char, unsigned char, unsigned int);
extern unsigned short (*v12) (signed char, unsigned char, unsigned int);
extern unsigned int v13 (signed short, signed int, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed int, signed char, unsigned int);
extern unsigned int v15 (unsigned char, unsigned char);
extern unsigned int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short, signed char);
extern signed char (*v18) (signed short, signed char);
extern signed short v19 (unsigned char, unsigned short);
extern signed short (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (signed int, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed int, unsigned short, unsigned char, signed char);
signed short v23 (unsigned char, signed int);
signed short (*v24) (unsigned char, signed int) = v23;
extern void v25 (unsigned short, signed short, unsigned int);
extern void (*v26) (unsigned short, signed short, unsigned int);
extern signed short v27 (unsigned short, signed char, signed char, unsigned char);
extern signed short (*v28) (unsigned short, signed char, signed char, unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 1;
signed char v121 = -3;
signed int v120 = -4;

signed short v23 (unsigned char v123, signed int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 2;
signed int v126 = -2;
unsigned char v125 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v128;
v128 = v29 ();
history[history_index++] = (int)v128;
}
break;
case 3: 
{
signed short v129;
v129 = v29 ();
history[history_index++] = (int)v129;
}
break;
case 5: 
{
signed short v130;
v130 = v29 ();
history[history_index++] = (int)v130;
}
break;
case 7: 
return -4;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v131, unsigned int v132, unsigned char v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 2;
unsigned short v136 = 7;
signed char v135 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
