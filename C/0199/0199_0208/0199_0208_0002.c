#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
void v3 (signed short, unsigned short, unsigned int);
void (*v4) (signed short, unsigned short, unsigned int) = v3;
extern void v5 (void);
extern void (*v6) (void);
signed char v7 (unsigned int);
signed char (*v8) (unsigned int) = v7;
unsigned int v9 (unsigned int, signed int);
unsigned int (*v10) (unsigned int, signed int) = v9;
extern signed short v11 (signed char, signed short, signed char, signed char);
extern signed short (*v12) (signed char, signed short, signed char, signed char);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned short v15 (unsigned int, signed int, signed short, unsigned int);
extern unsigned short (*v16) (unsigned int, signed int, signed short, unsigned int);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
static unsigned char v23 (signed int, signed char);
static unsigned char (*v24) (signed int, signed char) = v23;
extern signed short v25 (unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, signed char, unsigned short);
static unsigned short v27 (unsigned int, unsigned char, signed int);
static unsigned short (*v28) (unsigned int, unsigned char, signed int) = v27;
extern signed char v29 (signed short, signed short, signed int);
extern signed char (*v30) (signed short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = -2;
signed short v78 = 0;
unsigned char v77 = 7;

static unsigned short v27 (unsigned int v80, unsigned char v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 3;
unsigned char v84 = 3;
signed char v83 = 3;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

static unsigned char v23 (signed int v86, signed char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 0;
signed int v89 = -1;
unsigned char v88 = 6;
trace++;
switch (trace)
{
case 5: 
return v88;
case 7: 
return v88;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed char v93 = 0;
signed int v92 = 1;
unsigned char v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v94, signed int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -2;
signed char v97 = -4;
signed short v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 2;
signed int v101 = -4;
signed char v100 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v103, unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -1;
unsigned int v107 = 0U;
unsigned int v106 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned short v111 = 6;
signed int v110 = 0;
unsigned char v109 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v112;
signed short v113;
signed int v114;
signed char v115;
v112 = -1 - -4;
v113 = 0 - -4;
v114 = 1 - 1;
v115 = v29 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 2: 
{
unsigned int v116;
unsigned char v117;
signed int v118;
unsigned short v119;
v116 = 7U - 6U;
v117 = v109 + 5;
v118 = v110 + 2;
v119 = v27 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 4: 
{
signed int v120;
signed char v121;
unsigned char v122;
v120 = v110 - v110;
v121 = -2 - 0;
v122 = v23 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
{
signed int v123;
signed char v124;
unsigned char v125;
v123 = v110 - v110;
v124 = 2 - -1;
v125 = v23 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 8: 
return -4;
case 9: 
{
v5 ();
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
