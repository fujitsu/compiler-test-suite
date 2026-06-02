#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, signed short);
extern unsigned int (*v2) (signed short, unsigned int, signed short);
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern signed short v7 (unsigned char, signed short, unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern signed int v9 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned int v13 (signed short, unsigned int, unsigned short);
extern unsigned int (*v14) (signed short, unsigned int, unsigned short);
extern void v15 (unsigned short, signed short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, signed short, unsigned int, unsigned short);
unsigned char v17 (unsigned int, unsigned int, unsigned char);
unsigned char (*v18) (unsigned int, unsigned int, unsigned char) = v17;
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
void v21 (signed short, signed short, unsigned short, signed int);
void (*v22) (signed short, signed short, unsigned short, signed int) = v21;
unsigned int v23 (unsigned char);
unsigned int (*v24) (unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (unsigned char, signed short);
extern signed int (*v28) (unsigned char, signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = 3;
signed int v104 = 1;
unsigned short v103 = 5;

unsigned int v23 (unsigned char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 7U;
signed char v108 = -2;
signed char v107 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v110;
unsigned int v111;
v110 = v106 - v106;
v111 = v23 (v110);
history[history_index++] = (int)v111;
}
break;
case 3: 
{
unsigned char v112;
unsigned int v113;
v112 = 3 - 4;
v113 = v23 (v112);
history[history_index++] = (int)v113;
}
break;
case 4: 
{
unsigned char v114;
unsigned int v115;
v114 = 5 - 4;
v115 = v23 (v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
return 1U;
case 6: 
{
unsigned char v116;
unsigned int v117;
v116 = 6 + v106;
v117 = v23 (v116);
history[history_index++] = (int)v117;
}
break;
case 7: 
{
unsigned char v118;
unsigned int v119;
v118 = v106 - v106;
v119 = v23 (v118);
history[history_index++] = (int)v119;
}
break;
case 8: 
{
unsigned char v120;
unsigned int v121;
v120 = 4 - 6;
v121 = v23 (v120);
history[history_index++] = (int)v121;
}
break;
case 9: 
return 6U;
case 10: 
{
unsigned char v122;
unsigned int v123;
v122 = v106 - 3;
v123 = v23 (v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return 5U;
case 12: 
return v109;
case 13: 
return v109;
case 14: 
return v109;
case 15: 
return 0U;
case 16: 
return v109;
default: abort ();
}
}
}
}

void v21 (signed short v124, signed short v125, unsigned short v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
unsigned char v129 = 4;
unsigned short v128 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v131, unsigned int v132, unsigned char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 3;
signed char v135 = 1;
signed char v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 3;
unsigned char v139 = 7;
signed int v138 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
