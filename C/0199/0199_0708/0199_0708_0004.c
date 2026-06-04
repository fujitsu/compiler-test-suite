#include <stdlib.h>
extern unsigned int v3 (signed char, signed short);
extern unsigned int (*v4) (signed char, signed short);
unsigned char v5 (unsigned short);
unsigned char (*v6) (unsigned short) = v5;
extern unsigned char v7 (unsigned char, signed short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int, signed int);
extern signed int v9 (unsigned short, unsigned char);
extern signed int (*v10) (unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (signed int);
extern void (*v18) (signed int);
signed short v19 (signed int, unsigned int, unsigned short);
signed short (*v20) (signed int, unsigned int, unsigned short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (signed int, unsigned char, unsigned int);
unsigned int (*v24) (signed int, unsigned char, unsigned int) = v23;
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
unsigned short v27 (signed char, signed short, signed int);
unsigned short (*v28) (signed char, signed short, signed int) = v27;
extern unsigned short v29 (signed int, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 6;
unsigned int v132 = 6U;
signed char v131 = -1;

unsigned short v27 (signed char v134, signed short v135, signed int v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 0;
signed char v138 = 3;
signed char v137 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed int v140, unsigned char v141, unsigned int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 0;
unsigned short v144 = 4;
signed char v143 = 2;
trace++;
switch (trace)
{
case 6: 
return 4U;
default: abort ();
}
}
}
}

signed short v19 (signed int v146, unsigned int v147, unsigned short v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed short v151 = 2;
signed char v150 = 3;
unsigned short v149 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v152)
{
history[history_index++] = (int)v152;
{
for (;;) {
unsigned short v155 = 7;
unsigned short v154 = 1;
signed short v153 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
