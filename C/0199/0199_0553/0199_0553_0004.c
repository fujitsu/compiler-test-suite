#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
void v13 (void);
void (*v14) (void) = v13;
static signed char v15 (unsigned int, signed short);
static signed char (*v16) (unsigned int, signed short) = v15;
unsigned short v17 (unsigned int, signed short, unsigned int);
unsigned short (*v18) (unsigned int, signed short, unsigned int) = v17;
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (void);
signed int (*v26) (void) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
void v29 (unsigned short, unsigned int, signed short);
void (*v30) (unsigned short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 2;
signed char v87 = -1;
unsigned short v86 = 3;

void v29 (unsigned short v89, unsigned int v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -1;
signed short v93 = 2;
unsigned int v92 = 1U;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

unsigned char v27 (void)
{
{
for (;;) {
signed short v97 = 3;
signed int v96 = -2;
signed short v95 = -4;
trace++;
switch (trace)
{
case 2: 
return 3;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed char v100 = -1;
unsigned int v99 = 4U;
signed char v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v101, signed short v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 6;
signed int v105 = -4;
unsigned char v104 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v15 (unsigned int v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 1;
unsigned char v110 = 6;
signed int v109 = 1;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v112;
unsigned int v113;
unsigned char v114;
unsigned char v115;
v112 = 2 - 2;
v113 = v107 + 0U;
v114 = 5 + v110;
v115 = v19 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned short v118 = 0;
unsigned char v117 = 0;
signed int v116 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v121 = 3;
unsigned int v120 = 1U;
unsigned short v119 = 6;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v122;
signed short v123;
signed char v124;
v122 = v120 - v120;
v123 = 1 + 3;
v124 = v15 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
