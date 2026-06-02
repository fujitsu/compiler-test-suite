#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed char (*v6) (unsigned int, unsigned char, unsigned int, unsigned char);
signed short v7 (unsigned short, signed char, unsigned short);
signed short (*v8) (unsigned short, signed char, unsigned short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
signed char v15 (unsigned short, signed int, unsigned char);
signed char (*v16) (unsigned short, signed int, unsigned char) = v15;
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned int);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned int);
extern signed int v19 (unsigned int, unsigned int, signed int);
extern signed int (*v20) (unsigned int, unsigned int, signed int);
static unsigned short v21 (void);
static unsigned short (*v22) (void) = v21;
extern unsigned int v23 (signed short, signed int, signed short);
extern unsigned int (*v24) (signed short, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short v27 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned short (*v28) (unsigned char, unsigned short, unsigned int, signed short);
extern void v29 (signed short, unsigned short);
extern void (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 0;
signed char v82 = -2;
unsigned int v81 = 7U;

static unsigned short v21 (void)
{
{
for (;;) {
signed short v86 = 3;
signed int v85 = -1;
unsigned char v84 = 4;
trace++;
switch (trace)
{
case 2: 
{
signed short v87;
signed int v88;
signed short v89;
unsigned int v90;
v87 = -2 + v86;
v88 = v85 + v85;
v89 = v86 + -1;
v90 = v23 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 4: 
{
signed short v91;
signed int v92;
signed short v93;
unsigned int v94;
v91 = v86 - -3;
v92 = v85 + -1;
v93 = 3 - v86;
v94 = v23 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (unsigned short v95, signed int v96, unsigned char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 7;
unsigned short v99 = 5;
unsigned int v98 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v101, signed char v102, unsigned short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -3;
signed char v105 = -1;
unsigned int v104 = 4U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v107;
v107 = v21 ();
history[history_index++] = (int)v107;
}
break;
case 7: 
{
v11 ();
}
break;
case 9: 
{
unsigned int v108;
unsigned short v109;
unsigned int v110;
signed char v111;
unsigned short v112;
v108 = 3U + v104;
v109 = v103 + v103;
v110 = v104 - 7U;
v111 = v102 - 3;
v112 = v25 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}
