#include <stdlib.h>
signed char v1 (unsigned int, unsigned int, unsigned char);
signed char (*v2) (unsigned int, unsigned int, unsigned char) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern signed short v7 (unsigned short, signed short, unsigned int);
extern signed short (*v8) (unsigned short, signed short, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
unsigned short v11 (unsigned int, signed char);
unsigned short (*v12) (unsigned int, signed char) = v11;
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned char, signed int, unsigned int);
extern unsigned char v19 (signed short, unsigned char, signed short);
extern unsigned char (*v20) (signed short, unsigned char, signed short);
extern signed int v21 (signed short, signed int);
extern signed int (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (signed int, signed int, signed char, signed short);
signed int (*v26) (signed int, signed int, signed char, signed short) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
signed int v29 (unsigned int, signed int);
signed int (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = 1;
signed int v94 = 0;
signed int v93 = 3;

signed int v29 (unsigned int v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 7;
unsigned short v99 = 5;
signed int v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed int v101, signed int v102, signed char v103, signed short v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -1;
unsigned short v106 = 2;
unsigned char v105 = 1;
trace++;
switch (trace)
{
case 10: 
return v101;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v108, signed char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -3;
unsigned char v111 = 2;
unsigned char v110 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v113, unsigned int v114, unsigned char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
signed char v117 = -3;
unsigned int v116 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
v119 = 0 + 5;
v3 (v119);
}
break;
case 2: 
{
signed short v120;
signed int v121;
signed int v122;
v120 = 2 + 0;
v121 = 3 + -4;
v122 = v21 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 4: 
{
unsigned short v123;
signed short v124;
unsigned int v125;
signed short v126;
v123 = 5 + 2;
v124 = 3 + -1;
v125 = v118 + v116;
v126 = v7 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
return -4;
case 7: 
{
signed char v127;
signed int v128;
v127 = 2 + v117;
v128 = v15 (v127);
history[history_index++] = (int)v128;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
