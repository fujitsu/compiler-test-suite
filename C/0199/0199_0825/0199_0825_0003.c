#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
void v3 (signed int, unsigned int);
void (*v4) (signed int, unsigned int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed char, signed char, signed int, signed short);
extern void (*v8) (signed char, signed char, signed int, signed short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v13 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned char, unsigned int);
extern unsigned short v15 (unsigned int, signed char);
extern unsigned short (*v16) (unsigned int, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (signed char, signed int);
extern void (*v20) (signed char, signed int);
extern signed short v21 (unsigned char, signed int);
extern signed short (*v22) (unsigned char, signed int);
signed char v23 (unsigned short, signed int);
signed char (*v24) (unsigned short, signed int) = v23;
unsigned char v25 (signed short);
unsigned char (*v26) (signed short) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = 0;
signed char v95 = -4;
unsigned int v94 = 5U;

unsigned char v25 (signed short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 4;
signed short v99 = -1;
signed char v98 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned short v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 2;
signed char v104 = 1;
signed int v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v108 = -3;
unsigned int v107 = 2U;
signed int v106 = -2;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v109;
v109 = v17 ();
history[history_index++] = (int)v109;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

void v3 (signed int v110, unsigned int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 0;
unsigned int v113 = 7U;
signed short v112 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v115;
signed int v116;
signed short v117;
v115 = 7 + 0;
v116 = v110 - -3;
v117 = v21 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 3: 
{
unsigned char v118;
signed int v119;
signed short v120;
v118 = 2 - v114;
v119 = -1 + 2;
v120 = v21 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 19: 
return;
default: abort ();
}
}
}
}
