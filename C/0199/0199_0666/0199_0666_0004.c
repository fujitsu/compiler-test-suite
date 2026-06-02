#include <stdlib.h>
signed short v3 (signed int, unsigned short, signed char, unsigned int);
signed short (*v4) (signed int, unsigned short, signed char, unsigned int) = v3;
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned char);
unsigned char v7 (signed short);
unsigned char (*v8) (signed short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed char, signed int);
extern unsigned char (*v12) (signed char, signed int);
unsigned short v13 (signed short, unsigned int, signed int, signed int);
unsigned short (*v14) (signed short, unsigned int, signed int, signed int) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (unsigned char, unsigned char);
extern signed int (*v18) (unsigned char, unsigned char);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
unsigned int v23 (unsigned short);
unsigned int (*v24) (unsigned short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v28) (unsigned char, unsigned int, unsigned int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v118 = 0;
signed int v117 = -2;
signed short v116 = -1;

unsigned int v23 (unsigned short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 3U;
signed short v121 = 2;
unsigned int v120 = 1U;
trace++;
switch (trace)
{
case 5: 
return v122;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v123, unsigned int v124, signed int v125, signed int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -1;
unsigned char v128 = 3;
signed int v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 0;
unsigned short v132 = 5;
unsigned short v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v134, unsigned short v135, signed char v136, unsigned int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -3;
unsigned char v139 = 2;
unsigned int v138 = 5U;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}
