#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (unsigned char, signed char, unsigned int);
signed char (*v6) (unsigned char, signed char, unsigned int) = v5;
signed int v7 (unsigned char);
signed int (*v8) (unsigned char) = v7;
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern unsigned char v11 (signed int, unsigned short);
extern unsigned char (*v12) (signed int, unsigned short);
extern unsigned short v13 (unsigned char, signed short);
extern unsigned short (*v14) (unsigned char, signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed short, unsigned int, signed short);
extern signed short (*v18) (signed short, unsigned int, signed short);
signed int v21 (signed short, signed char, unsigned int);
signed int (*v22) (signed short, signed char, unsigned int) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
unsigned int v25 (signed char, signed int, signed char);
unsigned int (*v26) (signed char, signed int, signed char) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
signed char v29 (unsigned char, unsigned short, unsigned char);
signed char (*v30) (unsigned char, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v101 = 6;
unsigned short v100 = 0;
signed char v99 = 3;

signed char v29 (unsigned char v102, unsigned short v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 6;
unsigned char v106 = 5;
unsigned int v105 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed char v108, signed int v109, signed char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 6U;
signed short v112 = 0;
unsigned int v111 = 1U;
trace++;
switch (trace)
{
case 7: 
return v111;
case 9: 
return v111;
default: abort ();
}
}
}
}

signed int v21 (signed short v114, signed char v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 1;
unsigned short v118 = 1;
signed short v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -4;
unsigned short v122 = 3;
signed short v121 = -1;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v124, signed char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 6U;
signed short v128 = -2;
signed short v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
