#include <stdlib.h>
unsigned char v3 (unsigned short, signed short, signed char);
unsigned char (*v4) (unsigned short, signed short, signed char) = v3;
extern signed short v5 (unsigned char, signed short, signed short, signed int);
extern signed short (*v6) (unsigned char, signed short, signed short, signed int);
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
extern signed short v9 (signed short, signed short, signed int);
extern signed short (*v10) (signed short, signed short, signed int);
unsigned short v11 (signed short, signed char, unsigned int);
unsigned short (*v12) (signed short, signed char, unsigned int) = v11;
extern unsigned short v13 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v14) (signed int, unsigned int, signed char, signed int);
extern unsigned short v15 (unsigned short, signed short, unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, unsigned short, signed int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
extern unsigned short v19 (signed int, unsigned int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned int, unsigned char);
signed short v21 (unsigned char, unsigned short);
signed short (*v22) (unsigned char, unsigned short) = v21;
extern unsigned char v23 (unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned short, signed char, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed char v27 (unsigned char, unsigned char);
signed char (*v28) (unsigned char, unsigned char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v128 = 1;
unsigned int v127 = 2U;
signed char v126 = 2;

signed char v27 (unsigned char v129, unsigned char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
signed int v132 = 3;
signed char v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned char v134, unsigned short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -4;
signed short v137 = -3;
unsigned char v136 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v139, signed char v140, unsigned int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 5;
unsigned int v143 = 3U;
unsigned char v142 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v145, signed short v146, signed char v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = 3;
signed int v149 = -3;
signed short v148 = 0;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}
