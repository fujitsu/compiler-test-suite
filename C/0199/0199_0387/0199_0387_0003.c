#include <stdlib.h>
extern unsigned int v1 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v2) (signed short, signed short, unsigned char, unsigned short);
unsigned short v3 (unsigned int, signed char, unsigned short, unsigned short);
unsigned short (*v4) (unsigned int, signed char, unsigned short, unsigned short) = v3;
signed short v5 (signed short, unsigned char, unsigned char);
signed short (*v6) (signed short, unsigned char, unsigned char) = v5;
signed char v7 (signed char, unsigned char, signed short);
signed char (*v8) (signed char, unsigned char, signed short) = v7;
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern signed char v11 (unsigned short, signed short, signed int, signed short);
extern signed char (*v12) (unsigned short, signed short, signed int, signed short);
extern signed char v13 (unsigned int, signed short);
extern signed char (*v14) (unsigned int, signed short);
extern void v15 (unsigned char, unsigned int);
extern void (*v16) (unsigned char, unsigned int);
unsigned int v17 (unsigned short);
unsigned int (*v18) (unsigned short) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
signed char v21 (unsigned char, unsigned int);
signed char (*v22) (unsigned char, unsigned int) = v21;
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (signed int, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (signed int, unsigned int);
extern signed int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v103 = -4;
unsigned char v102 = 0;
unsigned char v101 = 0;

signed char v21 (unsigned char v104, unsigned int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 7U;
unsigned short v107 = 4;
unsigned int v106 = 4U;
trace++;
switch (trace)
{
case 7: 
return -3;
case 9: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 0U;
unsigned short v111 = 1;
unsigned short v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v113, unsigned char v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 4;
unsigned char v117 = 2;
signed char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v119, unsigned char v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -1;
unsigned char v123 = 0;
signed int v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v125, signed char v126, unsigned short v127, unsigned short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = -4;
signed char v130 = -3;
unsigned short v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
