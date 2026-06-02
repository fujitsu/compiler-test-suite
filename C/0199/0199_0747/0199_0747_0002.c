#include <stdlib.h>
signed short v1 (unsigned char, unsigned char, unsigned short);
signed short (*v2) (unsigned char, unsigned char, unsigned short) = v1;
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
signed short v5 (unsigned int, unsigned short, signed short, signed int);
signed short (*v6) (unsigned int, unsigned short, signed short, signed int) = v5;
static signed short v7 (unsigned int, unsigned int);
static signed short (*v8) (unsigned int, unsigned int) = v7;
extern signed char v9 (signed char, unsigned char, unsigned char);
extern signed char (*v10) (signed char, unsigned char, unsigned char);
extern signed int v11 (unsigned int, signed short);
extern signed int (*v12) (unsigned int, signed short);
static unsigned int v13 (unsigned int);
static unsigned int (*v14) (unsigned int) = v13;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern unsigned char v23 (signed int, unsigned short);
extern unsigned char (*v24) (signed int, unsigned short);
extern signed int v25 (unsigned short, unsigned short, unsigned char);
extern signed int (*v26) (unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char);
extern signed char (*v28) (signed short, signed char);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v90 = 2;
unsigned short v89 = 3;
unsigned char v88 = 3;

static unsigned int v13 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -3;
unsigned int v93 = 3U;
unsigned short v92 = 6;
trace++;
switch (trace)
{
case 2: 
{
signed char v95;
v95 = 1 - -1;
v21 (v95);
}
break;
case 16: 
return v93;
default: abort ();
}
}
}
}

static signed short v7 (unsigned int v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 3;
unsigned int v99 = 6U;
unsigned int v98 = 3U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v101;
unsigned int v102;
v101 = v96 - v98;
v102 = v13 (v101);
history[history_index++] = (int)v102;
}
break;
case 17: 
return -3;
default: abort ();
}
}
}
}

signed short v5 (unsigned int v103, unsigned short v104, signed short v105, signed int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 2;
signed int v108 = 0;
unsigned short v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v110, unsigned char v111, unsigned short v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -2;
signed char v114 = 1;
unsigned int v113 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v116;
unsigned int v117;
signed short v118;
v116 = 4U - 7U;
v117 = v113 - 2U;
v118 = v7 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 18: 
return 2;
default: abort ();
}
}
}
}
