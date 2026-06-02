#include <stdlib.h>
signed short v1 (signed char, unsigned char, signed short, signed int);
signed short (*v2) (signed char, unsigned char, signed short, signed int) = v1;
extern void v3 (unsigned char, signed int, unsigned int);
extern void (*v4) (unsigned char, signed int, unsigned int);
void v5 (unsigned short, signed char);
void (*v6) (unsigned short, signed char) = v5;
signed int v7 (signed char);
signed int (*v8) (signed char) = v7;
extern unsigned short v9 (signed char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned int);
extern unsigned int v11 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char, unsigned int);
extern void v13 (unsigned char, signed char, signed short);
extern void (*v14) (unsigned char, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned char v19 (unsigned short, signed short);
unsigned char (*v20) (unsigned short, signed short) = v19;
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned short v23 (unsigned short, signed int, signed int, signed short);
extern unsigned short (*v24) (unsigned short, signed int, signed int, signed short);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v107 = 6;
unsigned char v106 = 0;
unsigned short v105 = 4;

unsigned char v19 (unsigned short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 3;
unsigned short v111 = 5;
unsigned short v110 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 0;
signed short v115 = -2;
signed short v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 6;
signed int v120 = -3;
unsigned int v119 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v122, unsigned char v123, signed short v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -1;
signed int v127 = -2;
unsigned short v126 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v129;
unsigned int v130;
unsigned short v131;
v129 = v122 + v122;
v130 = 6U - 4U;
v131 = v9 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 2: 
{
v27 ();
}
break;
case 4: 
{
unsigned short v132;
v132 = v15 ();
history[history_index++] = (int)v132;
}
break;
case 6: 
{
unsigned short v133;
v133 = v15 ();
history[history_index++] = (int)v133;
}
break;
case 14: 
return v124;
default: abort ();
}
}
}
}
