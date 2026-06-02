#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern signed int v3 (unsigned char, signed short, unsigned int);
extern signed int (*v4) (unsigned char, signed short, unsigned int);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
extern unsigned int v9 (signed int, signed char, signed short);
extern unsigned int (*v10) (signed int, signed char, signed short);
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern unsigned int v19 (unsigned char, signed int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned char, signed int, unsigned int, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
static unsigned int v23 (void);
static unsigned int (*v24) (void) = v23;
unsigned char v25 (signed short, signed int, unsigned char, signed int);
unsigned char (*v26) (signed short, signed int, unsigned char, signed int) = v25;
extern signed int v27 (unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int);
unsigned short v29 (signed short, signed char);
unsigned short (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = -4;
unsigned short v89 = 5;
unsigned short v88 = 5;

unsigned short v29 (signed short v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = -1;
unsigned short v94 = 6;
unsigned int v93 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed short v96, signed int v97, unsigned char v98, signed int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 3;
signed int v101 = 3;
signed short v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v23 (void)
{
{
for (;;) {
unsigned short v105 = 5;
signed char v104 = 3;
unsigned short v103 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v106;
signed int v107;
unsigned int v108;
signed char v109;
unsigned int v110;
v106 = 4 + 6;
v107 = -2 + -4;
v108 = 7U + 6U;
v109 = v104 - v104;
v110 = v19 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

signed short v17 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -1;
signed short v113 = 1;
signed char v112 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v115;
v115 = v23 ();
history[history_index++] = (int)v115;
}
break;
case 13: 
return v113;
default: abort ();
}
}
}
}
