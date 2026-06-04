#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned int v11 (signed int, unsigned char, signed char, unsigned short);
extern unsigned int (*v12) (signed int, unsigned char, signed char, unsigned short);
unsigned short v13 (signed int, unsigned int, unsigned short);
unsigned short (*v14) (signed int, unsigned int, unsigned short) = v13;
unsigned char v15 (unsigned char, signed char);
unsigned char (*v16) (unsigned char, signed char) = v15;
unsigned short v17 (unsigned short, signed short, unsigned short, signed char);
unsigned short (*v18) (unsigned short, signed short, unsigned short, signed char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern signed int v23 (signed short, unsigned short, unsigned int, signed int);
extern signed int (*v24) (signed short, unsigned short, unsigned int, signed int);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern unsigned short v27 (signed char, signed int, unsigned char, signed int);
extern unsigned short (*v28) (signed char, signed int, unsigned char, signed int);
extern unsigned short v29 (signed int, unsigned char, signed char, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v135 = -1;
unsigned short v134 = 6;
signed int v133 = -1;

unsigned short v17 (unsigned short v136, signed short v137, unsigned short v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 0;
signed char v141 = -4;
signed short v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v143, signed char v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -3;
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

unsigned short v13 (signed int v148, unsigned int v149, unsigned short v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 7;
unsigned short v152 = 7;
signed int v151 = 0;
trace++;
switch (trace)
{
case 3: 
return v152;
default: abort ();
}
}
}
}
