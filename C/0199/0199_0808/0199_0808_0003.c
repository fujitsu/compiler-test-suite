#include <stdlib.h>
signed short v3 (unsigned short, unsigned char, signed short);
signed short (*v4) (unsigned short, unsigned char, signed short) = v3;
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (signed int, signed short, signed short, unsigned char);
extern signed short (*v10) (signed int, signed short, signed short, unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
signed char v15 (signed int, signed short, unsigned short);
signed char (*v16) (signed int, signed short, unsigned short) = v15;
extern unsigned char v17 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, unsigned int, unsigned char);
extern signed int v19 (signed int, signed int, unsigned short, unsigned char);
extern signed int (*v20) (signed int, signed int, unsigned short, unsigned char);
void v21 (signed char, signed short, signed char, unsigned short);
void (*v22) (signed char, signed short, signed char, unsigned short) = v21;
extern signed int v23 (signed char, signed char);
extern signed int (*v24) (signed char, signed char);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
unsigned char v27 (signed short, signed short, unsigned int, unsigned short);
unsigned char (*v28) (signed short, signed short, unsigned int, unsigned short) = v27;
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 4;
signed char v91 = 0;
unsigned int v90 = 6U;

unsigned char v27 (signed short v93, signed short v94, unsigned int v95, unsigned short v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -1;
unsigned int v98 = 6U;
signed char v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed char v100, signed short v101, signed char v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 7U;
signed char v105 = 2;
signed short v104 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed char v107;
signed char v108;
signed int v109;
v107 = v105 + 1;
v108 = -3 - v100;
v109 = v23 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed char v15 (signed int v110, signed short v111, unsigned short v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 5;
signed int v114 = -3;
signed short v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v116, unsigned char v117, signed short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 2;
signed int v120 = 3;
unsigned char v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
