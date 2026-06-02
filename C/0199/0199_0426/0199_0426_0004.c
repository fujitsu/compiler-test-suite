#include <stdlib.h>
extern signed char v3 (signed char, signed char, signed int, unsigned short);
extern signed char (*v4) (signed char, signed char, signed int, unsigned short);
extern signed int v5 (unsigned char, unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned char, unsigned int, unsigned short, signed int);
extern void v7 (signed char, unsigned int);
extern void (*v8) (signed char, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
unsigned int v11 (unsigned int, signed int, signed short, unsigned char);
unsigned int (*v12) (unsigned int, signed int, signed short, unsigned char) = v11;
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
extern unsigned char v15 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v16) (signed int, signed int, signed short, unsigned short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned short, signed int);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
signed short v25 (signed short, signed short, unsigned int);
signed short (*v26) (signed short, signed short, unsigned int) = v25;
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern signed short v29 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v134 = 0U;
signed int v133 = -3;
unsigned char v132 = 4;

signed short v25 (signed short v135, signed short v136, unsigned int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -1;
signed short v139 = -4;
signed int v138 = 2;
trace++;
switch (trace)
{
case 10: 
return v139;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v141, signed int v142, signed short v143, unsigned char v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 2U;
signed int v146 = 1;
unsigned int v145 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
