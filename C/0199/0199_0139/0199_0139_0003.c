#include <stdlib.h>
signed int v1 (unsigned int);
signed int (*v2) (unsigned int) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned char v7 (unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
extern void v15 (void);
extern void (*v16) (void);
signed int v17 (unsigned int, unsigned short, unsigned int, unsigned int);
signed int (*v18) (unsigned int, unsigned short, unsigned int, unsigned int) = v17;
void v19 (unsigned short);
void (*v20) (unsigned short) = v19;
unsigned short v21 (unsigned int);
unsigned short (*v22) (unsigned int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, unsigned char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char);
extern signed int v27 (signed short, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed short, unsigned int, unsigned int, signed int);
extern signed int v29 (signed int, unsigned short, unsigned char);
extern signed int (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -1;
unsigned char v84 = 4;
signed short v83 = 1;

unsigned short v21 (unsigned int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -2;
signed int v88 = -1;
unsigned char v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 3;
unsigned char v92 = 1;
signed short v91 = 3;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
{
signed short v94;
unsigned int v95;
unsigned int v96;
signed int v97;
signed int v98;
v94 = v93 - -3;
v95 = 7U + 3U;
v96 = 1U + 5U;
v97 = 2 + 1;
v98 = v27 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 9: 
{
signed short v99;
unsigned int v100;
unsigned int v101;
signed int v102;
signed int v103;
v99 = v93 - -1;
v100 = 1U - 2U;
v101 = 3U + 0U;
v102 = 2 + 3;
v103 = v27 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v104, unsigned short v105, unsigned int v106, unsigned int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 3;
signed int v109 = -2;
signed short v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v113 = 6;
unsigned short v112 = 1;
signed int v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 4;
unsigned int v116 = 7U;
signed int v115 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v118;
unsigned short v119;
unsigned char v120;
v118 = 0 + 7;
v119 = 7 - 7;
v120 = v7 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 14: 
return v115;
default: abort ();
}
}
}
}
