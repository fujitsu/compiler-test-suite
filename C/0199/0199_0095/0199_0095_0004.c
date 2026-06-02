#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned short, signed short, unsigned char);
unsigned short (*v2) (unsigned short, unsigned short, signed short, unsigned char) = v1;
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
signed short v7 (signed int, signed int, signed int);
signed short (*v8) (signed int, signed int, signed int) = v7;
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern signed char v11 (signed short, unsigned short, signed int);
extern signed char (*v12) (signed short, unsigned short, signed int);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned char, unsigned short, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned short, signed int, unsigned int);
signed short v25 (signed short, signed int);
signed short (*v26) (signed short, signed int) = v25;
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
unsigned int v29 (unsigned char);
unsigned int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = 2;
unsigned int v104 = 6U;
unsigned short v103 = 5;

unsigned int v29 (unsigned char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 3;
unsigned short v108 = 4;
signed int v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed short v110, signed int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 1;
unsigned char v113 = 2;
unsigned int v112 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed char v118 = -4;
unsigned char v117 = 3;
signed char v116 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v119, signed int v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 5;
signed int v123 = -1;
unsigned char v122 = 4;
trace++;
switch (trace)
{
case 3: 
return 1;
case 5: 
return 2;
case 7: 
return -1;
case 9: 
return -4;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 1;
signed short v127 = -2;
unsigned short v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v129, unsigned short v130, signed short v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 6;
unsigned int v134 = 2U;
unsigned int v133 = 2U;
trace++;
switch (trace)
{
case 0: 
return v135;
case 1: 
{
unsigned char v136;
signed int v137;
v136 = v132 + 0;
v137 = v5 (v136);
history[history_index++] = (int)v137;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}
