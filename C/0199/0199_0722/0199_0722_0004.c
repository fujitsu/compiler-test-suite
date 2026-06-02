#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
signed char v7 (signed int, unsigned short, unsigned int, unsigned int);
signed char (*v8) (signed int, unsigned short, unsigned int, unsigned int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, unsigned char, unsigned char, signed char);
void v17 (void);
void (*v18) (void) = v17;
signed char v19 (unsigned char, signed int, signed int);
signed char (*v20) (unsigned char, signed int, signed int) = v19;
extern unsigned char v21 (signed char, signed char);
extern unsigned char (*v22) (signed char, signed char);
extern void v23 (unsigned short, signed int, signed int);
extern void (*v24) (unsigned short, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
signed int v29 (signed int, signed int);
signed int (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 7U;
signed int v114 = -4;
unsigned char v113 = 0;

signed int v29 (signed int v116, signed int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 0;
unsigned char v119 = 0;
unsigned int v118 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v121, signed int v122, signed int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 0;
unsigned int v125 = 1U;
unsigned short v124 = 6;
trace++;
switch (trace)
{
case 3: 
{
v25 ();
}
break;
case 5: 
{
v25 ();
}
break;
case 7: 
return -3;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v129 = 3;
signed short v128 = -1;
unsigned short v127 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v130, unsigned short v131, unsigned int v132, unsigned int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 1U;
unsigned int v135 = 3U;
unsigned short v134 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v137;
v137 = v11 ();
history[history_index++] = (int)v137;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
