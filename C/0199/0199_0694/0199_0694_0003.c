#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned int, unsigned int, signed short, signed int);
extern unsigned short (*v4) (unsigned int, unsigned int, signed short, signed int);
extern signed int v7 (signed short, signed short);
extern signed int (*v8) (signed short, signed short);
void v9 (unsigned char, unsigned short);
void (*v10) (unsigned char, unsigned short) = v9;
unsigned char v11 (signed int, unsigned char, signed short, unsigned char);
unsigned char (*v12) (signed int, unsigned char, signed short, unsigned char) = v11;
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
unsigned char v23 (unsigned short, unsigned int, unsigned char, signed short);
unsigned char (*v24) (unsigned short, unsigned int, unsigned char, signed short) = v23;
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
void v27 (unsigned char, signed char, unsigned int, signed int);
void (*v28) (unsigned char, signed char, unsigned int, signed int) = v27;
extern unsigned short v29 (signed int, unsigned int, signed short);
extern unsigned short (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v101 = 4;
signed char v100 = 3;
unsigned int v99 = 3U;

void v27 (unsigned char v102, signed char v103, unsigned int v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 2;
unsigned char v107 = 3;
unsigned short v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v109, unsigned int v110, unsigned char v111, signed short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 2;
unsigned char v114 = 4;
signed int v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v116, unsigned char v117, signed short v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 1;
unsigned short v121 = 0;
unsigned short v120 = 5;
trace++;
switch (trace)
{
case 5: 
return v119;
case 9: 
{
signed short v123;
signed int v124;
unsigned short v125;
v123 = -3 + 3;
v124 = v116 - v116;
v125 = v15 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 11: 
return v117;
default: abort ();
}
}
}
}

void v9 (unsigned char v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 6;
signed int v129 = 2;
unsigned int v128 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
