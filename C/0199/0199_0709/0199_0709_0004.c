#include <stdlib.h>
extern signed int v3 (signed short, unsigned int, unsigned char);
extern signed int (*v4) (signed short, unsigned int, unsigned char);
unsigned char v5 (unsigned char, unsigned short, unsigned short);
unsigned char (*v6) (unsigned char, unsigned short, unsigned short) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern void v9 (signed char, signed int, unsigned int);
extern void (*v10) (signed char, signed int, unsigned int);
signed short v11 (unsigned int, signed short, signed int, unsigned char);
signed short (*v12) (unsigned int, signed short, signed int, unsigned char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v17 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v18) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v19 (signed int, signed char);
extern signed short (*v20) (signed int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 5U;
unsigned char v129 = 5;
unsigned char v128 = 0;

unsigned int v25 (void)
{
{
for (;;) {
signed char v133 = -3;
signed short v132 = 3;
signed int v131 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v134, signed short v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -2;
unsigned int v139 = 7U;
signed short v138 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v141, unsigned short v142, unsigned short v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -1;
unsigned short v145 = 4;
signed int v144 = -1;
trace++;
switch (trace)
{
case 1: 
return 6;
default: abort ();
}
}
}
}
