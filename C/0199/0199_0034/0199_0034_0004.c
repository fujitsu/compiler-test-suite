#include <stdlib.h>
unsigned int v1 (unsigned short, signed short, unsigned short);
unsigned int (*v2) (unsigned short, signed short, unsigned short) = v1;
extern unsigned char v3 (unsigned int, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned int);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
void v11 (signed short, unsigned int, signed int);
void (*v12) (signed short, unsigned int, signed int) = v11;
extern unsigned short v13 (unsigned short, signed char);
extern unsigned short (*v14) (unsigned short, signed char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, signed char);
extern signed char (*v20) (unsigned short, signed int, signed char);
extern signed short v21 (signed short, unsigned short, unsigned int, signed short);
extern signed short (*v22) (signed short, unsigned short, unsigned int, signed short);
unsigned int v23 (signed char, unsigned char, signed short, unsigned char);
unsigned int (*v24) (signed char, unsigned char, signed short, unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (signed char, signed int, unsigned int);
extern void (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = -4;
signed int v104 = 3;
unsigned short v103 = 5;

unsigned int v23 (signed char v106, unsigned char v107, signed short v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 1U;
unsigned int v111 = 1U;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v113, unsigned int v114, signed int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 0U;
unsigned int v117 = 4U;
signed char v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v119, signed short v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 2U;
signed short v123 = -4;
unsigned short v122 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v125;
signed char v126;
unsigned short v127;
v125 = 1 + v122;
v126 = -4 - -2;
v127 = v13 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 4: 
{
unsigned char v128;
v128 = v17 ();
history[history_index++] = (int)v128;
}
break;
case 6: 
{
signed char v129;
signed int v130;
unsigned int v131;
v129 = -2 - -1;
v130 = -3 - -1;
v131 = v124 + 1U;
v29 (v129, v130, v131);
}
break;
case 8: 
{
unsigned short v132;
signed int v133;
signed char v134;
signed char v135;
v132 = v121 + v121;
v133 = 2 - 2;
v134 = -2 - 2;
v135 = v19 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 10: 
{
signed int v136;
v136 = v25 ();
history[history_index++] = (int)v136;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}
