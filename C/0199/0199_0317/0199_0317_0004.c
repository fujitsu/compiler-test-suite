#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern signed char v5 (unsigned char, unsigned int);
extern signed char (*v6) (unsigned char, unsigned int);
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned int v11 (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v13 (signed int, signed int, unsigned short);
extern unsigned short (*v14) (signed int, signed int, unsigned short);
extern unsigned short v15 (signed short, signed short, unsigned short, signed char);
extern unsigned short (*v16) (signed short, signed short, unsigned short, signed char);
signed int v17 (unsigned int, signed char, unsigned int, unsigned short);
signed int (*v18) (unsigned int, signed char, unsigned int, unsigned short) = v17;
extern signed char v19 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v20) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned int v25 (signed short, unsigned int, signed char, signed char);
unsigned int (*v26) (signed short, unsigned int, signed char, signed char) = v25;
extern unsigned char v27 (signed int, signed int, unsigned int);
extern unsigned char (*v28) (signed int, signed int, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 4;
unsigned char v132 = 5;
unsigned int v131 = 4U;

unsigned int v25 (signed short v134, unsigned int v135, signed char v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -4;
signed int v139 = -4;
unsigned int v138 = 3U;
trace++;
switch (trace)
{
case 1: 
return 0U;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v141, signed char v142, unsigned int v143, unsigned short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -1;
signed int v146 = 0;
unsigned char v145 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
