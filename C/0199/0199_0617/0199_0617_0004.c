#include <stdlib.h>
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
extern signed char v7 (unsigned char, signed short, signed char, signed char);
extern signed char (*v8) (unsigned char, signed short, signed char, signed char);
signed int v9 (signed short, signed int, signed short, signed int);
signed int (*v10) (signed short, signed int, signed short, signed int) = v9;
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern unsigned short v27 (signed int, signed short, signed short, unsigned int);
extern unsigned short (*v28) (signed int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 6;
signed short v131 = -1;
unsigned short v130 = 5;

signed int v19 (void)
{
{
for (;;) {
signed short v135 = 2;
unsigned short v134 = 7;
unsigned int v133 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -2;
unsigned short v138 = 1;
unsigned char v137 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed short v140, signed int v141, signed short v142, signed int v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -2;
signed int v145 = -4;
unsigned char v144 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v147;
v147 = v15 ();
history[history_index++] = (int)v147;
}
break;
case 9: 
return 3;
default: abort ();
}
}
}
}
