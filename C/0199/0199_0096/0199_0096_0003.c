#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
void v5 (signed int, unsigned short, unsigned char);
void (*v6) (signed int, unsigned short, unsigned char) = v5;
unsigned char v7 (signed int, unsigned short);
unsigned char (*v8) (signed int, unsigned short) = v7;
extern unsigned char v9 (signed int, signed int, unsigned int);
extern unsigned char (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, signed char, signed char);
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
static unsigned char v17 (signed char, signed char, signed char, unsigned int);
static unsigned char (*v18) (signed char, signed char, signed char, unsigned int) = v17;
void v19 (unsigned short, signed int, unsigned short, unsigned int);
void (*v20) (unsigned short, signed int, unsigned short, unsigned int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = -2;
signed char v79 = -1;
signed char v78 = 0;

unsigned char v25 (void)
{
{
for (;;) {
signed short v83 = -1;
unsigned char v82 = 6;
unsigned short v81 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned short v86 = 6;
signed int v85 = -2;
signed int v84 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed int v87;
unsigned short v88;
unsigned char v89;
v87 = -4 + v85;
v88 = 4 - 4;
v89 = v7 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 11: 
return 5;
case 15: 
return 0;
default: abort ();
}
}
}
}

void v19 (unsigned short v90, signed int v91, unsigned short v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 2;
unsigned int v95 = 7U;
signed char v94 = 0;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
{
unsigned short v97;
v97 = v21 ();
history[history_index++] = (int)v97;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}

static unsigned char v17 (signed char v98, signed char v99, signed char v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 4;
signed char v103 = -4;
signed char v102 = -1;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v105;
v105 = v21 ();
history[history_index++] = (int)v105;
}
break;
case 13: 
return v104;
default: abort ();
}
}
}
}

unsigned char v7 (signed int v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -3;
signed short v109 = -3;
signed short v108 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v111;
unsigned int v112;
signed char v113;
v111 = v107 + 4;
v112 = 0U - 1U;
v113 = v15 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 8: 
{
signed char v114;
signed char v115;
signed char v116;
unsigned int v117;
unsigned char v118;
v114 = -4 + -2;
v115 = 3 + -2;
v116 = 1 + -2;
v117 = 7U + 0U;
v118 = v17 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 14: 
return 3;
case 19: 
return 1;
default: abort ();
}
}
}
}

void v5 (signed int v119, unsigned short v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -4;
unsigned short v123 = 2;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
