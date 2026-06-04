#include <stdlib.h>
extern unsigned short v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned short, unsigned char);
extern unsigned short v7 (signed short, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned short, signed short, unsigned int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v12) (signed short, unsigned int, unsigned short, unsigned int);
extern void v13 (signed short, unsigned short, unsigned int);
extern void (*v14) (signed short, unsigned short, unsigned int);
signed int v15 (signed short, signed char, signed short, unsigned char);
signed int (*v16) (signed short, signed char, signed short, unsigned char) = v15;
extern unsigned short v17 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char, unsigned short, unsigned char);
extern void v19 (signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed char, unsigned int);
extern unsigned char v21 (signed char, signed char, signed char, unsigned short);
extern unsigned char (*v22) (signed char, signed char, signed char, unsigned short);
void v23 (signed int, signed int, unsigned char, signed int);
void (*v24) (signed int, signed int, unsigned char, signed int) = v23;
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (unsigned char, unsigned char, signed short);
extern unsigned int (*v28) (unsigned char, unsigned char, signed short);
extern signed char v29 (unsigned int, unsigned short, signed char, unsigned char);
extern signed char (*v30) (unsigned int, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = 1;
signed short v97 = -2;
unsigned short v96 = 5;

void v23 (signed int v99, signed int v100, unsigned char v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 2;
signed char v104 = -1;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v106, signed char v107, signed short v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 0;
unsigned short v111 = 2;
signed short v110 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v113;
unsigned char v114;
signed short v115;
unsigned int v116;
v113 = 5 - v109;
v114 = 6 - 6;
v115 = v106 - 1;
v116 = v27 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 4: 
{
unsigned char v117;
unsigned char v118;
signed short v119;
unsigned int v120;
v117 = v109 + 2;
v118 = v109 + 2;
v119 = v106 - v106;
v120 = v27 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 6: 
{
unsigned char v121;
unsigned char v122;
signed short v123;
unsigned int v124;
v121 = 3 - v109;
v122 = v109 - v109;
v123 = v106 - v108;
v124 = v27 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 8: 
{
unsigned char v125;
unsigned char v126;
signed short v127;
unsigned int v128;
v125 = 3 + 4;
v126 = 6 - v109;
v127 = v108 - v110;
v128 = v27 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 10: 
return v112;
default: abort ();
}
}
}
}
