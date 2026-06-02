#include <stdlib.h>
unsigned char v1 (unsigned short);
unsigned char (*v2) (unsigned short) = v1;
extern unsigned char v3 (signed short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int);
extern unsigned short v5 (unsigned char, signed int);
extern unsigned short (*v6) (unsigned char, signed int);
extern unsigned short v7 (signed int, signed int, signed char, signed char);
extern unsigned short (*v8) (signed int, signed int, signed char, signed char);
static signed char v9 (signed int, unsigned short);
static signed char (*v10) (signed int, unsigned short) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed char, unsigned short, signed short);
extern unsigned short (*v14) (signed char, unsigned short, signed short);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
extern signed int v19 (signed char, unsigned int, unsigned short);
extern signed int (*v20) (signed char, unsigned int, unsigned short);
extern signed char v21 (unsigned short, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char);
extern signed short v23 (unsigned short, unsigned short, signed int);
extern signed short (*v24) (unsigned short, unsigned short, signed int);
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (signed int, unsigned int, unsigned char, unsigned short);
unsigned int (*v28) (signed int, unsigned int, unsigned char, unsigned short) = v27;
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 1;
unsigned char v90 = 4;
signed char v89 = 1;

unsigned int v27 (signed int v92, unsigned int v93, unsigned char v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 5;
signed short v97 = -1;
signed int v96 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v9 (signed int v99, unsigned short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
signed short v102 = -3;
signed int v101 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed short v104;
v104 = v11 ();
history[history_index++] = (int)v104;
}
break;
case 3: 
{
signed short v105;
v105 = v11 ();
history[history_index++] = (int)v105;
}
break;
case 9: 
{
signed int v106;
signed int v107;
signed char v108;
signed char v109;
unsigned short v110;
v106 = v103 - v101;
v107 = -2 - v101;
v108 = 2 + -3;
v109 = 0 - -4;
v110 = v7 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 0;
signed short v113 = 1;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed int v115;
unsigned short v116;
signed char v117;
v115 = 3 - 2;
v116 = v111 + v114;
v117 = v9 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
