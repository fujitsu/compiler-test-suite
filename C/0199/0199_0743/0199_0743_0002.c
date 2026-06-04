#include <stdlib.h>
extern unsigned short v1 (signed int, signed char);
extern unsigned short (*v2) (signed int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned char, unsigned int, unsigned char);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char);
extern void v7 (unsigned short, signed char, signed int);
extern void (*v8) (unsigned short, signed char, signed int);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern signed char v11 (signed short, unsigned char, unsigned short);
extern signed char (*v12) (signed short, unsigned char, unsigned short);
extern signed char v13 (signed char, unsigned short);
extern signed char (*v14) (signed char, unsigned short);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
static signed char v17 (signed short, unsigned short, unsigned char);
static signed char (*v18) (signed short, unsigned short, unsigned char) = v17;
extern unsigned short v19 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v20) (signed int, signed short, unsigned char, signed int);
extern signed short v21 (signed short, signed char, signed short);
extern signed short (*v22) (signed short, signed char, signed short);
extern signed int v23 (signed short, unsigned short, signed char);
extern signed int (*v24) (signed short, unsigned short, signed char);
signed char v25 (signed char, signed short, signed int, signed int);
signed char (*v26) (signed char, signed short, signed int, signed int) = v25;
extern unsigned short v27 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned short (*v28) (unsigned char, unsigned short, signed int, unsigned char);
extern void v29 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = 3;
unsigned char v86 = 7;
unsigned char v85 = 7;

signed char v25 (signed char v88, signed short v89, signed int v90, signed int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 0;
unsigned int v93 = 2U;
signed char v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (signed short v95, unsigned short v96, unsigned char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -4;
unsigned int v99 = 4U;
unsigned short v98 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v101;
unsigned int v102;
unsigned char v103;
signed int v104;
v101 = v97 + 3;
v102 = v99 - v99;
v103 = v97 - v97;
v104 = v5 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return v100;
default: abort ();
}
}
}
}

unsigned char v9 (signed char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -3;
signed int v107 = -4;
signed short v106 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed short v109;
unsigned short v110;
unsigned char v111;
signed char v112;
v109 = 2 - -1;
v110 = 7 - 7;
v111 = 1 + 4;
v112 = v17 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 11: 
return 2;
case 14: 
return 1;
default: abort ();
}
}
}
}
