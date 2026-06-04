#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned int, unsigned short, unsigned int);
unsigned char v3 (signed int, unsigned char, signed short);
unsigned char (*v4) (signed int, unsigned char, signed short) = v3;
extern void v5 (signed char, signed int, unsigned int, signed int);
extern void (*v6) (signed char, signed int, unsigned int, signed int);
signed short v7 (signed int, unsigned char, signed char);
signed short (*v8) (signed int, unsigned char, signed char) = v7;
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short, signed short, unsigned short);
extern signed char (*v14) (signed short, signed short, unsigned short);
extern void v15 (signed int, signed char, signed short, unsigned int);
extern void (*v16) (signed int, signed char, signed short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned int);
extern unsigned int (*v20) (signed char, signed int, unsigned int);
extern void v21 (unsigned int, unsigned short);
extern void (*v22) (unsigned int, unsigned short);
signed int v23 (signed char, signed short, signed char);
signed int (*v24) (signed char, signed short, signed char) = v23;
extern signed short v25 (signed char, signed char, unsigned short);
extern signed short (*v26) (signed char, signed char, unsigned short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed char v29 (signed short, unsigned char, signed int, signed int);
extern signed char (*v30) (signed short, unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v136 = 3;
signed char v135 = 2;
signed int v134 = -4;

signed int v23 (signed char v137, signed short v138, signed char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 0;
signed short v141 = 2;
signed int v140 = 2;
trace++;
switch (trace)
{
case 2: 
return -1;
case 4: 
return v140;
case 6: 
return v142;
default: abort ();
}
}
}
}

signed short v7 (signed int v143, unsigned char v144, signed char v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = -2;
unsigned int v147 = 6U;
signed int v146 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v149, unsigned char v150, signed short v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned char v154 = 5;
unsigned int v153 = 2U;
unsigned int v152 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
