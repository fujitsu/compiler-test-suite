#include <stdlib.h>
extern signed char v1 (signed int, signed short);
extern signed char (*v2) (signed int, signed short);
extern unsigned int v3 (unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, signed short);
signed short v5 (unsigned char, unsigned short);
signed short (*v6) (unsigned char, unsigned short) = v5;
extern signed short v7 (unsigned int, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, unsigned char);
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
extern signed short v11 (signed int, signed int, unsigned char);
extern signed short (*v12) (signed int, signed int, unsigned char);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
extern unsigned short v15 (unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
signed short v19 (signed short, signed char);
signed short (*v20) (signed short, signed char) = v19;
void v21 (unsigned int, signed short, unsigned int);
void (*v22) (unsigned int, signed short, unsigned int) = v21;
extern signed char v23 (unsigned char, signed short, signed char, signed short);
extern signed char (*v24) (unsigned char, signed short, signed char, signed short);
unsigned int v25 (unsigned int);
unsigned int (*v26) (unsigned int) = v25;
extern unsigned char v29 (signed short, unsigned char, signed int);
extern unsigned char (*v30) (signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 1;
unsigned char v103 = 2;
unsigned int v102 = 2U;

unsigned int v25 (unsigned int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 0U;
signed char v107 = -3;
unsigned short v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v109, signed short v110, unsigned int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 0;
unsigned char v113 = 6;
unsigned char v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 2;
unsigned int v118 = 5U;
unsigned int v117 = 3U;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

signed char v13 (signed short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -1;
unsigned char v122 = 0;
signed int v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v124, unsigned short v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 4U;
signed int v127 = -1;
unsigned char v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
