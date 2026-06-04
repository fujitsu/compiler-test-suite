#include <stdlib.h>
void v1 (unsigned int, signed short, signed int, signed int);
void (*v2) (unsigned int, signed short, signed int, signed int) = v1;
static signed char v3 (void);
static signed char (*v4) (void) = v3;
extern unsigned short v5 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v6) (signed int, unsigned int, signed char, signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned char, unsigned short, signed short, signed int);
extern void (*v10) (unsigned char, unsigned short, signed short, signed int);
extern signed int v11 (unsigned short, signed int, signed int, signed int);
extern signed int (*v12) (unsigned short, signed int, signed int, signed int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed int);
extern signed int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned char, signed int, unsigned short, unsigned short);
extern signed char (*v22) (unsigned char, signed int, unsigned short, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern signed int v29 (signed short, unsigned int, signed short, signed char);
extern signed int (*v30) (signed short, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 7U;
signed char v104 = -1;
unsigned int v103 = 5U;

signed int v15 (void)
{
{
for (;;) {
signed short v108 = 3;
unsigned int v107 = 2U;
signed int v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (void)
{
{
for (;;) {
unsigned short v111 = 2;
unsigned char v110 = 5;
signed char v109 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed short v112;
signed short v113;
v112 = -2 + -3;
v113 = v7 (v112);
history[history_index++] = (int)v113;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

void v1 (unsigned int v114, signed short v115, signed int v116, signed int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 2;
unsigned int v119 = 5U;
unsigned char v118 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed short v121;
signed int v122;
v121 = v115 - v115;
v122 = v13 (v121);
history[history_index++] = (int)v122;
}
break;
case 2: 
{
signed int v123;
signed char v124;
v123 = v117 - 3;
v124 = v17 (v123);
history[history_index++] = (int)v124;
}
break;
case 6: 
{
signed char v125;
v125 = v3 ();
history[history_index++] = (int)v125;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
