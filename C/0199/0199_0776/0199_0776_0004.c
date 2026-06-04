#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned int, signed short, signed char, signed char);
extern unsigned int (*v10) (unsigned int, signed short, signed char, signed char);
void v11 (signed char, unsigned short, signed int);
void (*v12) (signed char, unsigned short, signed int) = v11;
static void v13 (unsigned char);
static void (*v14) (unsigned char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (unsigned char, unsigned short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v105 = 3;
signed short v104 = 0;
signed char v103 = -3;

signed short v25 (void)
{
{
for (;;) {
unsigned short v108 = 4;
unsigned short v107 = 3;
unsigned int v106 = 7U;
trace++;
switch (trace)
{
case 3: 
return 2;
case 5: 
return -3;
case 7: 
return -1;
default: abort ();
}
}
}
}

static void v13 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -1;
signed int v111 = -1;
signed int v110 = 2;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v113;
signed short v114;
signed int v115;
v113 = v109 + v109;
v114 = -2 + 2;
v115 = v21 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v11 (signed char v116, unsigned short v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 2;
signed char v120 = 2;
signed char v119 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v122;
signed short v123;
v122 = 5 + 5;
v123 = v17 (v122);
history[history_index++] = (int)v123;
}
break;
case 9: 
{
unsigned char v124;
v124 = 6 - 1;
v13 (v124);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed char v127 = -1;
signed short v126 = 1;
signed int v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
