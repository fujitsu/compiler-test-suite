#include <stdlib.h>
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
signed int v5 (signed int, unsigned char, unsigned char, signed short);
signed int (*v6) (signed int, unsigned char, unsigned char, signed short) = v5;
extern unsigned int v7 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, unsigned short);
signed char v13 (signed int, signed short, unsigned char);
signed char (*v14) (signed int, signed short, unsigned char) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned short v21 (unsigned int, signed char, signed int, unsigned short);
extern unsigned short (*v22) (unsigned int, signed char, signed int, unsigned short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed int v27 (unsigned char, signed short, signed int);
extern signed int (*v28) (unsigned char, signed short, signed int);
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v140 = -3;
unsigned int v139 = 4U;
unsigned short v138 = 0;

signed short v23 (void)
{
{
for (;;) {
signed short v143 = 1;
signed int v142 = -2;
unsigned int v141 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed short v146 = -3;
signed int v145 = 2;
unsigned int v144 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v147, signed short v148, unsigned char v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed int v152 = 0;
signed char v151 = -3;
signed char v150 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v153, unsigned char v154, unsigned char v155, signed short v156)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
signed short v159 = 0;
unsigned short v158 = 5;
unsigned char v157 = 7;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v160;
v160 = v17 ();
history[history_index++] = (int)v160;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
