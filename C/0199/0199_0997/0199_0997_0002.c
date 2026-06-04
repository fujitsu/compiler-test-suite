#include <stdlib.h>
unsigned char v3 (unsigned int, signed int);
unsigned char (*v4) (unsigned int, signed int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (unsigned short, signed short, signed int);
extern signed short (*v12) (unsigned short, signed short, signed int);
unsigned int v13 (signed short, signed int, signed short);
unsigned int (*v14) (signed short, signed int, signed short) = v13;
extern unsigned short v15 (unsigned int, signed short, unsigned short);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short);
signed char v17 (signed char, signed short, signed short);
signed char (*v18) (signed char, signed short, signed short) = v17;
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
static unsigned char v23 (signed int, signed int, signed int);
static unsigned char (*v24) (signed int, signed int, signed int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (unsigned short, signed char);
extern void (*v28) (unsigned short, signed char);
signed int v29 (signed char, signed int, unsigned char);
signed int (*v30) (signed char, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = 0;
signed short v75 = 3;
signed short v74 = 2;

signed int v29 (signed char v77, signed int v78, unsigned char v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 0;
unsigned int v81 = 3U;
unsigned char v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v23 (signed int v83, signed int v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 5;
signed char v87 = -1;
signed char v86 = 3;
trace++;
switch (trace)
{
case 9: 
return 3;
default: abort ();
}
}
}
}

signed char v17 (signed char v89, signed short v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -1;
unsigned char v93 = 2;
signed char v92 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v95;
v95 = v21 ();
history[history_index++] = (int)v95;
}
break;
case 3: 
return -2;
default: abort ();
}
}
}
}

unsigned int v13 (signed short v96, signed int v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -3;
unsigned char v100 = 5;
signed int v99 = 0;
trace++;
switch (trace)
{
case 8: 
{
signed int v102;
signed int v103;
signed int v104;
unsigned char v105;
v102 = -2 + v99;
v103 = 0 + -4;
v104 = -1 - v97;
v105 = v23 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 10: 
{
signed short v106;
v106 = v5 ();
history[history_index++] = (int)v106;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v107, signed int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 4U;
unsigned short v110 = 7;
signed short v109 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
