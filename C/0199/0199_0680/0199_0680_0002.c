#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
static signed int v7 (unsigned int);
static signed int (*v8) (unsigned int) = v7;
unsigned char v9 (signed int, unsigned char, signed int, signed short);
unsigned char (*v10) (signed int, unsigned char, signed int, signed short) = v9;
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, unsigned short, signed short, unsigned char);
extern signed char (*v16) (unsigned char, unsigned short, signed short, unsigned char);
extern void v17 (signed int, unsigned int, unsigned int, signed int);
extern void (*v18) (signed int, unsigned int, unsigned int, signed int);
extern void v19 (unsigned char, signed char, unsigned char, signed int);
extern void (*v20) (unsigned char, signed char, unsigned char, signed int);
extern signed short v21 (unsigned short, signed char, signed short);
extern signed short (*v22) (unsigned short, signed char, signed short);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
unsigned int v25 (signed short, signed short, signed char);
unsigned int (*v26) (signed short, signed short, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v71 = 1;
signed char v70 = -3;
unsigned char v69 = 6;

unsigned short v29 (unsigned short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = 3;
unsigned char v74 = 5;
unsigned int v73 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed short v76, signed short v77, signed char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
unsigned short v80 = 2;
unsigned int v79 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v82, unsigned char v83, signed int v84, signed short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 3;
unsigned int v87 = 6U;
unsigned char v86 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v89;
signed char v90;
signed char v91;
v89 = 7 + 4;
v90 = -4 - -2;
v91 = v23 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return v86;
default: abort ();
}
}
}
}

static signed int v7 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -3;
signed int v94 = 3;
unsigned char v93 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v96;
unsigned char v97;
signed int v98;
unsigned char v99;
v96 = v92 + 7U;
v97 = v93 - 0;
v98 = -4 - -1;
v99 = v13 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed short v102 = -4;
unsigned short v101 = 2;
signed int v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed char v105 = -2;
unsigned char v104 = 4;
unsigned char v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 7;
unsigned short v108 = 6;
signed char v107 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v110;
signed int v111;
v110 = v106 + v106;
v111 = v7 (v110);
history[history_index++] = (int)v111;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
