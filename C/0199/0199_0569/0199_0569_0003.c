#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
unsigned short v7 (signed char, unsigned char, unsigned int);
unsigned short (*v8) (signed char, unsigned char, unsigned int) = v7;
extern unsigned char v9 (unsigned int, signed short);
extern unsigned char (*v10) (unsigned int, signed short);
extern unsigned char v11 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v12) (unsigned char, signed short, signed char, signed short);
extern unsigned short v13 (unsigned int, signed short, signed char);
extern unsigned short (*v14) (unsigned int, signed short, signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
unsigned short v17 (unsigned int, signed int);
unsigned short (*v18) (unsigned int, signed int) = v17;
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned int v21 (unsigned char, unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned char, unsigned int, unsigned int, signed int);
extern void v23 (unsigned short, signed char, signed char);
extern void (*v24) (unsigned short, signed char, signed char);
unsigned short v25 (unsigned short, signed int, unsigned int);
unsigned short (*v26) (unsigned short, signed int, unsigned int) = v25;
static unsigned char v27 (signed int, signed short, unsigned int);
static unsigned char (*v28) (signed int, signed short, unsigned int) = v27;
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 5;
signed char v82 = 3;
signed char v81 = -2;

static unsigned char v27 (signed int v84, signed short v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -2;
unsigned int v88 = 2U;
signed int v87 = 2;
trace++;
switch (trace)
{
case 5: 
return 6;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v90, signed int v91, unsigned int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 0;
signed char v94 = 2;
unsigned char v93 = 4;
trace++;
switch (trace)
{
case 8: 
{
signed char v96;
signed short v97;
signed int v98;
v96 = v94 - -3;
v97 = 1 - v95;
v98 = v29 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 10: 
return 3;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -1;
unsigned int v102 = 3U;
unsigned short v101 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v104, unsigned char v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 2;
signed char v108 = -4;
unsigned int v107 = 3U;
trace++;
switch (trace)
{
case 4: 
{
signed int v110;
signed short v111;
unsigned int v112;
unsigned char v113;
v110 = -4 + 0;
v111 = v109 - -3;
v112 = 6U - 1U;
v113 = v27 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 6: 
{
unsigned int v114;
signed short v115;
unsigned char v116;
v114 = 5U - v106;
v115 = v109 + -2;
v116 = v9 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
