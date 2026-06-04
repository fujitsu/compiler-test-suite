#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
signed char v5 (signed short, unsigned short);
signed char (*v6) (signed short, unsigned short) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
void v9 (signed short);
void (*v10) (signed short) = v9;
signed char v11 (unsigned char, unsigned char);
signed char (*v12) (unsigned char, unsigned char) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned char, unsigned int, unsigned char);
extern void (*v24) (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
unsigned int v27 (signed short, signed short, unsigned int);
unsigned int (*v28) (signed short, signed short, unsigned int) = v27;
unsigned int v29 (signed char, signed char);
unsigned int (*v30) (signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = 1;
unsigned int v82 = 7U;
signed int v81 = 1;

unsigned int v29 (signed char v84, signed char v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 0;
unsigned short v87 = 7;
unsigned int v86 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed short v89, signed short v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 2;
unsigned short v93 = 3;
signed char v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned char v97 = 4;
unsigned int v96 = 6U;
signed char v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed int v100 = -1;
signed short v99 = -2;
unsigned short v98 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v101;
v101 = v15 ();
history[history_index++] = (int)v101;
}
break;
case 2: 
{
signed short v102;
unsigned char v103;
unsigned int v104;
unsigned char v105;
v102 = 3 + 0;
v103 = 1 + 2;
v104 = 7U - 0U;
v105 = 3 + 4;
v23 (v102, v103, v104, v105);
}
break;
case 4: 
{
signed short v106;
unsigned char v107;
unsigned int v108;
unsigned char v109;
v106 = v99 + v99;
v107 = 3 + 4;
v108 = 6U + 4U;
v109 = 5 + 4;
v23 (v106, v107, v108, v109);
}
break;
case 6: 
return 0;
case 7: 
return 3;
default: abort ();
}
}
}
}

signed char v11 (unsigned char v110, unsigned char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 7;
signed char v113 = 1;
unsigned short v112 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -4;
unsigned int v117 = 4U;
unsigned char v116 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v119, unsigned short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 2;
unsigned int v122 = 6U;
signed int v121 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
