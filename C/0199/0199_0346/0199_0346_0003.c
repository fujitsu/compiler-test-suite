#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
extern unsigned short v7 (signed short, unsigned char);
extern unsigned short (*v8) (signed short, unsigned char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed char, signed char);
extern unsigned int (*v12) (signed char, signed char);
extern unsigned int v13 (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed short, unsigned char, unsigned char);
signed short v15 (signed int, signed short, unsigned char, unsigned short);
signed short (*v16) (signed int, signed short, unsigned char, unsigned short) = v15;
extern signed char v17 (unsigned char, signed int, signed short, signed char);
extern signed char (*v18) (unsigned char, signed int, signed short, signed char);
extern signed int v19 (signed char, unsigned char, unsigned int, signed char);
extern signed int (*v20) (signed char, unsigned char, unsigned int, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned short v23 (signed short, unsigned int, unsigned int, unsigned char);
unsigned short (*v24) (signed short, unsigned int, unsigned int, unsigned char) = v23;
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern unsigned char v29 (signed char, signed int, signed char);
extern unsigned char (*v30) (signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v127 = 1;
signed short v126 = -3;
signed char v125 = 3;

unsigned short v23 (signed short v128, unsigned int v129, unsigned int v130, unsigned char v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 1;
unsigned char v133 = 6;
unsigned char v132 = 6;
trace++;
switch (trace)
{
case 1: 
return 2;
case 5: 
return 4;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v15 (signed int v135, signed short v136, unsigned char v137, unsigned short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 4;
unsigned char v140 = 3;
unsigned short v139 = 5;
trace++;
switch (trace)
{
case 9: 
return v136;
default: abort ();
}
}
}
}
