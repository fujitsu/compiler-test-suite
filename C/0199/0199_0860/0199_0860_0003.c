#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed short, signed char);
extern unsigned int (*v2) (signed char, signed int, signed short, signed char);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed char v5 (signed char, signed short);
signed char (*v6) (signed char, signed short) = v5;
extern unsigned short v7 (signed int, signed int, signed char, unsigned short);
extern unsigned short (*v8) (signed int, signed int, signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v13 (signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int, unsigned int);
signed char v15 (signed int, unsigned char, signed char);
signed char (*v16) (signed int, unsigned char, signed char) = v15;
extern unsigned int v17 (signed int, unsigned char);
extern unsigned int (*v18) (signed int, unsigned char);
extern unsigned short v19 (signed char, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed short v23 (signed char, unsigned char, signed char);
extern signed short (*v24) (signed char, unsigned char, signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned short);
extern unsigned short v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short, signed char, unsigned short);
signed char v29 (unsigned int, signed char, unsigned short, signed int);
signed char (*v30) (unsigned int, signed char, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -1;
signed char v126 = 2;
signed char v125 = -2;

signed char v29 (unsigned int v128, signed char v129, unsigned short v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 3;
signed int v133 = 2;
unsigned int v132 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v135, unsigned char v136, signed char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -1;
unsigned short v139 = 3;
unsigned char v138 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 2U;
signed short v144 = 2;
signed short v143 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
