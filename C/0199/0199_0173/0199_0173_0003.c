#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
unsigned int v3 (signed char, signed char, unsigned int);
unsigned int (*v4) (signed char, signed char, unsigned int) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed char v9 (signed char, signed short);
extern signed char (*v10) (signed char, signed short);
void v11 (signed short);
void (*v12) (signed short) = v11;
static signed short v13 (unsigned int);
static signed short (*v14) (unsigned int) = v13;
static unsigned int v15 (unsigned int, unsigned char, signed char);
static unsigned int (*v16) (unsigned int, unsigned char, signed char) = v15;
extern void v17 (signed char);
extern void (*v18) (signed char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
signed short v23 (signed char, unsigned char, signed short);
signed short (*v24) (signed char, unsigned char, signed short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 4U;
unsigned short v74 = 1;
signed short v73 = -1;

signed short v23 (signed char v76, unsigned char v77, signed short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 6U;
unsigned short v80 = 0;
signed short v79 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned int v84 = 1U;
signed int v83 = -2;
unsigned int v82 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v15 (unsigned int v85, unsigned char v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
unsigned short v89 = 1;
signed int v88 = 2;
trace++;
switch (trace)
{
case 7: 
return v85;
case 9: 
return v85;
default: abort ();
}
}
}
}

static signed short v13 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = 2;
unsigned char v93 = 5;
unsigned char v92 = 7;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v95;
unsigned char v96;
signed char v97;
unsigned int v98;
v95 = v91 - v91;
v96 = v92 + 0;
v97 = -2 - -4;
v98 = v15 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
unsigned int v99;
unsigned char v100;
signed char v101;
unsigned int v102;
v99 = 1U + v91;
v100 = v93 - 7;
v101 = -3 + -4;
v102 = v15 (v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 10: 
{
unsigned char v103;
unsigned int v104;
v103 = v93 + v93;
v104 = v29 (v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

void v11 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
signed int v107 = 0;
unsigned short v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v109, signed char v110, unsigned int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = -1;
signed short v113 = -1;
unsigned int v112 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned short v117 = 1;
signed short v116 = -2;
unsigned short v115 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v118;
signed char v119;
signed short v120;
v118 = 1 + -3;
v119 = 1 + 2;
v120 = v21 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 2: 
{
signed char v121;
signed char v122;
signed short v123;
v121 = 1 - 0;
v122 = -4 - -2;
v123 = v21 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 4: 
return 3;
case 5: 
{
unsigned int v124;
signed short v125;
v124 = 0U - 1U;
v125 = v13 (v124);
history[history_index++] = (int)v125;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
