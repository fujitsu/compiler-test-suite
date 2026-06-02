#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned int);
extern unsigned char (*v2) (signed short, unsigned int);
extern signed char v3 (unsigned int, signed char, signed int);
extern signed char (*v4) (unsigned int, signed char, signed int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned short v15 (signed char, unsigned short, unsigned int, unsigned short);
unsigned short (*v16) (signed char, unsigned short, unsigned int, unsigned short) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
unsigned short v19 (unsigned int, unsigned char, unsigned short, unsigned char);
unsigned short (*v20) (unsigned int, unsigned char, unsigned short, unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned short, signed char, signed char);
extern unsigned int (*v24) (unsigned short, signed char, signed char);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
unsigned int v27 (signed char, signed char);
unsigned int (*v28) (signed char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v128 = 2;
signed short v127 = -2;
signed char v126 = -3;

unsigned int v27 (signed char v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 2;
signed int v132 = -2;
unsigned short v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v134, unsigned char v135, unsigned short v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 6U;
signed char v139 = 1;
unsigned int v138 = 5U;
trace++;
switch (trace)
{
case 3: 
return v136;
case 5: 
return 5;
default: abort ();
}
}
}
}

unsigned short v15 (signed char v141, unsigned short v142, unsigned int v143, unsigned short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 2;
signed char v146 = -2;
signed char v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
