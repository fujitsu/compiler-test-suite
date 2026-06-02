#include <stdlib.h>
extern signed int v1 (signed int, signed short);
extern signed int (*v2) (signed int, signed short);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern signed char v5 (signed int, signed char);
extern signed char (*v6) (signed int, signed char);
extern unsigned short v7 (unsigned char, signed int);
extern unsigned short (*v8) (unsigned char, signed int);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
signed char v13 (unsigned char, unsigned int, signed char, signed short);
signed char (*v14) (unsigned char, unsigned int, signed char, signed short) = v13;
signed short v15 (unsigned char, signed short, signed short, unsigned short);
signed short (*v16) (unsigned char, signed short, signed short, unsigned short) = v15;
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned short v19 (signed int, signed int, signed int);
extern unsigned short (*v20) (signed int, signed int, signed int);
extern void v21 (void);
extern void (*v22) (void);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
signed int v25 (signed int, unsigned short, unsigned int, unsigned int);
signed int (*v26) (signed int, unsigned short, unsigned int, unsigned int) = v25;
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
extern unsigned char v29 (signed short, signed int, unsigned int);
extern unsigned char (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v117 = 5;
signed short v116 = 1;
unsigned int v115 = 1U;

signed int v25 (signed int v118, unsigned short v119, unsigned int v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 5U;
unsigned char v123 = 3;
signed int v122 = 2;
trace++;
switch (trace)
{
case 5: 
return v118;
default: abort ();
}
}
}
}

signed int v23 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 3;
signed int v127 = -1;
unsigned short v126 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v129, signed short v130, signed short v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 2U;
unsigned short v134 = 0;
unsigned char v133 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v136, unsigned int v137, signed char v138, signed short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = 0;
unsigned short v141 = 1;
signed char v140 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
