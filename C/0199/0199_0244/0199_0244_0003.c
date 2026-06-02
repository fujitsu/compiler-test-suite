#include <stdlib.h>
void v3 (signed short, unsigned int, signed char, signed char);
void (*v4) (signed short, unsigned int, signed char, signed char) = v3;
unsigned short v5 (unsigned int, signed short);
unsigned short (*v6) (unsigned int, signed short) = v5;
extern signed short v7 (unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, unsigned char);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed short v11 (signed char, unsigned short, unsigned int);
signed short (*v12) (signed char, unsigned short, unsigned int) = v11;
extern unsigned char v13 (signed int, signed short);
extern unsigned char (*v14) (signed int, signed short);
extern signed int v15 (signed char, unsigned char, signed int, unsigned char);
extern signed int (*v16) (signed char, unsigned char, signed int, unsigned char);
extern void v17 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v18) (unsigned int, unsigned short, signed char, unsigned short);
extern void v19 (signed char, unsigned char);
extern void (*v20) (signed char, unsigned char);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned int v25 (signed int, unsigned char);
unsigned int (*v26) (signed int, unsigned char) = v25;
extern signed char v27 (signed short, signed short);
extern signed char (*v28) (signed short, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = 0;
unsigned short v89 = 1;
signed char v88 = 0;

unsigned int v25 (signed int v91, unsigned char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 0;
signed int v94 = -1;
signed char v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v96, unsigned short v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 0U;
unsigned char v100 = 1;
unsigned char v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed short v104 = 3;
signed int v103 = -2;
signed char v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v105, signed short v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -3;
unsigned char v108 = 7;
signed short v107 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v110;
signed short v111;
unsigned char v112;
v110 = -4 + 2;
v111 = v107 + v106;
v112 = v13 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 3: 
{
unsigned short v113;
unsigned char v114;
signed short v115;
v113 = 7 - 2;
v114 = 6 - v108;
v115 = v7 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v3 (signed short v116, unsigned int v117, signed char v118, signed char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = -4;
signed int v121 = 2;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
