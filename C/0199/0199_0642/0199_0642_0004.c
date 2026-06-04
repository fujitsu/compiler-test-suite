#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned int, unsigned char);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed int v7 (unsigned short, unsigned char, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char, unsigned char);
signed char v9 (void);
signed char (*v10) (void) = v9;
unsigned char v11 (signed int, signed int, unsigned char, signed short);
unsigned char (*v12) (signed int, signed int, unsigned char, signed short) = v11;
extern void v13 (unsigned int, signed short, signed short, signed char);
extern void (*v14) (unsigned int, signed short, signed short, signed char);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed char v17 (unsigned short, signed int, unsigned int);
extern signed char (*v18) (unsigned short, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int, signed int, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int, signed int, unsigned int);
signed int v21 (signed char, unsigned int, signed int);
signed int (*v22) (signed char, unsigned int, signed int) = v21;
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v135 = 7;
signed char v134 = -1;
unsigned int v133 = 4U;

signed int v21 (signed char v136, unsigned int v137, signed int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 2;
signed int v140 = 3;
signed short v139 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v142, signed int v143, unsigned char v144, signed short v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed char v148 = 2;
unsigned short v147 = 2;
unsigned char v146 = 6;
trace++;
switch (trace)
{
case 10: 
return v146;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v151 = 3;
signed char v150 = 2;
signed int v149 = -3;
trace++;
switch (trace)
{
case 7: 
return v150;
default: abort ();
}
}
}
}
