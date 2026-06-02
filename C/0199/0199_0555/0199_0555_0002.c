#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, unsigned short, signed int);
extern signed short (*v2) (signed int, unsigned int, unsigned short, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (signed char, unsigned short, signed short);
extern unsigned char (*v8) (signed char, unsigned short, signed short);
unsigned int v9 (signed short, unsigned char, unsigned int, unsigned short);
unsigned int (*v10) (signed short, unsigned char, unsigned int, unsigned short) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, signed int, unsigned int, signed char);
extern signed short (*v14) (signed int, signed int, unsigned int, signed char);
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
extern signed char v17 (signed int, unsigned char, signed short, unsigned char);
extern signed char (*v18) (signed int, unsigned char, signed short, unsigned char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
signed short v23 (void);
signed short (*v24) (void) = v23;
unsigned char v25 (unsigned int, unsigned short);
unsigned char (*v26) (unsigned int, unsigned short) = v25;
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v84 = 3;
unsigned short v83 = 6;
unsigned char v82 = 7;

signed char v29 (void)
{
{
for (;;) {
signed short v87 = -2;
unsigned char v86 = 3;
unsigned int v85 = 3U;
trace++;
switch (trace)
{
case 7: 
{
signed short v88;
v88 = v23 ();
history[history_index++] = (int)v88;
}
break;
case 9: 
{
signed short v89;
v89 = v23 ();
history[history_index++] = (int)v89;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v90, unsigned short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 5U;
signed char v93 = -4;
unsigned short v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed char v97 = 1;
signed short v96 = -1;
signed char v95 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v98;
unsigned char v99;
signed short v100;
unsigned char v101;
signed char v102;
v98 = 0 - -2;
v99 = 2 - 4;
v100 = v96 + 0;
v101 = 1 - 1;
v102 = v17 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 8: 
return v96;
case 10: 
{
signed int v103;
unsigned char v104;
signed short v105;
unsigned char v106;
signed char v107;
v103 = -3 - 2;
v104 = 7 + 6;
v105 = -1 + v96;
v106 = 4 - 1;
v107 = v17 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 12: 
return -4;
case 15: 
return -1;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v108, unsigned char v109, unsigned int v110, unsigned short v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 6;
signed int v113 = 3;
signed int v112 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
