#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned char);
extern signed short (*v2) (unsigned short, unsigned char);
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
signed int v7 (signed int, unsigned char);
signed int (*v8) (signed int, unsigned char) = v7;
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned short, signed short);
extern signed int v13 (signed int, signed char);
extern signed int (*v14) (signed int, signed char);
unsigned char v15 (signed int, signed int, signed int);
unsigned char (*v16) (signed int, signed int, signed int) = v15;
extern unsigned short v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned int, unsigned short, signed int);
extern signed short v19 (unsigned char, signed char, signed char);
extern signed short (*v20) (unsigned char, signed char, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed short v25 (signed short, unsigned char, unsigned short, unsigned short);
signed short (*v26) (signed short, unsigned char, unsigned short, unsigned short) = v25;
extern void v27 (signed char, signed int, unsigned char);
extern void (*v28) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 0U;
signed short v121 = -3;
signed int v120 = -1;

signed short v25 (signed short v123, unsigned char v124, unsigned short v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -2;
unsigned short v128 = 6;
unsigned short v127 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v130, signed int v131, signed int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -4;
signed char v134 = 3;
signed int v133 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v136, unsigned char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -4;
signed char v139 = 3;
unsigned short v138 = 7;
trace++;
switch (trace)
{
case 1: 
return v136;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = -4;
unsigned int v143 = 5U;
unsigned short v142 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
