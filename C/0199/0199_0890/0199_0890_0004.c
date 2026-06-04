#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned int, signed int);
extern unsigned char (*v2) (signed int, unsigned int, signed int);
extern unsigned short v3 (signed char, signed short, signed char, signed char);
extern unsigned short (*v4) (signed char, signed short, signed char, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned short v7 (signed short, unsigned short);
unsigned short (*v8) (signed short, unsigned short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
unsigned int v21 (signed char, unsigned char, signed int, signed short);
unsigned int (*v22) (signed char, unsigned char, signed int, signed short) = v21;
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = 2;
signed char v125 = 0;
unsigned short v124 = 7;

unsigned int v21 (signed char v127, unsigned char v128, signed int v129, signed short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 1U;
unsigned int v132 = 7U;
unsigned short v131 = 7;
trace++;
switch (trace)
{
case 5: 
return v133;
case 9: 
return v132;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 7;
unsigned int v136 = 0U;
signed char v135 = -3;
trace++;
switch (trace)
{
case 1: 
return 7U;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v138, unsigned short v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 7;
signed short v141 = -4;
signed int v140 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
