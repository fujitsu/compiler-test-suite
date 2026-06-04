#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern signed int v3 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v4) (unsigned int, unsigned char, unsigned char, unsigned short);
extern void v5 (unsigned int, signed char);
extern void (*v6) (unsigned int, signed char);
unsigned int v7 (unsigned char, signed short, unsigned short);
unsigned int (*v8) (unsigned char, signed short, unsigned short) = v7;
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
unsigned short v11 (unsigned char, signed char, unsigned char, signed short);
unsigned short (*v12) (unsigned char, signed char, unsigned char, signed short) = v11;
extern void v13 (signed short);
extern void (*v14) (signed short);
signed int v15 (signed int, signed int, signed char);
signed int (*v16) (signed int, signed int, signed char) = v15;
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
unsigned char v19 (unsigned short, unsigned int);
unsigned char (*v20) (unsigned short, unsigned int) = v19;
extern signed char v21 (unsigned char, signed int, signed int);
extern signed char (*v22) (unsigned char, signed int, signed int);
extern void v23 (signed int, unsigned int, signed char);
extern void (*v24) (signed int, unsigned int, signed char);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned char v27 (unsigned short, unsigned int, signed char);
extern unsigned char (*v28) (unsigned short, unsigned int, signed char);
extern unsigned short v29 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 3;
unsigned char v99 = 3;
signed char v98 = -4;

unsigned char v19 (unsigned short v101, unsigned int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -4;
unsigned short v104 = 7;
unsigned char v103 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v106, signed int v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 3;
unsigned int v110 = 6U;
unsigned char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v112, signed char v113, unsigned char v114, signed short v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
unsigned int v117 = 6U;
unsigned char v116 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v119;
v119 = v115 - -3;
v13 (v119);
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v120, signed short v121, unsigned short v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 0;
unsigned int v124 = 3U;
unsigned char v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
