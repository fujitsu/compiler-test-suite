#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed char, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v3 (signed char, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned short, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
unsigned short v17 (signed int, signed int, signed int, signed int);
unsigned short (*v18) (signed int, signed int, signed int, signed int) = v17;
extern unsigned short v19 (unsigned int, signed short, signed char, unsigned short);
extern unsigned short (*v20) (unsigned int, signed short, signed char, unsigned short);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
signed int v23 (unsigned int, signed int, unsigned int);
signed int (*v24) (unsigned int, signed int, unsigned int) = v23;
extern unsigned int v25 (signed char, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short);
extern unsigned char v27 (unsigned int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned int);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 0;
signed short v125 = -3;
signed short v124 = -4;

signed int v23 (unsigned int v127, signed int v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -1;
signed int v131 = -2;
signed int v130 = 2;
trace++;
switch (trace)
{
case 2: 
return v131;
case 6: 
return -1;
default: abort ();
}
}
}
}

unsigned short v17 (signed int v133, signed int v134, signed int v135, signed int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 0;
unsigned short v138 = 6;
signed short v137 = -4;
trace++;
switch (trace)
{
case 4: 
return 1;
case 8: 
{
signed short v140;
signed int v141;
v140 = 2 - 3;
v141 = v21 (v140);
history[history_index++] = (int)v141;
}
break;
case 10: 
{
v13 ();
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
