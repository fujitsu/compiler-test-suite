#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
unsigned char v5 (unsigned char, unsigned char, signed int);
unsigned char (*v6) (unsigned char, unsigned char, signed int) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed short v9 (unsigned short, unsigned char);
extern signed short (*v10) (unsigned short, unsigned char);
void v11 (signed short, signed int, signed short, unsigned int);
void (*v12) (signed short, signed int, signed short, unsigned int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned char, signed char, signed int, unsigned short);
extern unsigned int (*v16) (unsigned char, signed char, signed int, unsigned short);
extern void v17 (void);
extern void (*v18) (void);
static signed int v19 (signed char, signed short);
static signed int (*v20) (signed char, signed short) = v19;
void v21 (signed char);
void (*v22) (signed char) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
static unsigned char v25 (signed char, unsigned short);
static unsigned char (*v26) (signed char, unsigned short) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = 0;
signed char v73 = 3;
signed short v72 = -4;

static unsigned char v25 (signed char v75, unsigned short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 6U;
unsigned short v78 = 1;
unsigned char v77 = 5;
trace++;
switch (trace)
{
case 2: 
return v77;
case 4: 
return 3;
case 8: 
return v77;
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned char v82 = 3;
signed char v81 = 0;
unsigned char v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -3;
unsigned short v85 = 5;
signed char v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (signed char v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -4;
unsigned char v90 = 2;
unsigned int v89 = 6U;
trace++;
switch (trace)
{
case 10: 
return -1;
default: abort ();
}
}
}
}

void v11 (signed short v92, signed int v93, signed short v94, unsigned int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 5;
unsigned short v97 = 2;
signed int v96 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed char v99;
unsigned short v100;
unsigned char v101;
v99 = 2 + 0;
v100 = v97 - 6;
v101 = v25 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 3: 
{
signed char v102;
unsigned short v103;
unsigned char v104;
v102 = 1 - -3;
v103 = 2 - 1;
v104 = v25 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 5: 
{
signed short v105;
signed int v106;
signed short v107;
unsigned int v108;
v105 = v94 - v92;
v106 = v93 - -1;
v107 = v92 - v92;
v108 = v95 - 6U;
v11 (v105, v106, v107, v108);
}
break;
case 6: 
{
signed short v109;
signed int v110;
signed short v111;
unsigned int v112;
v109 = v94 + v94;
v110 = v96 - v93;
v111 = v94 + 1;
v112 = v95 + 2U;
v11 (v109, v110, v111, v112);
}
break;
case 7: 
{
signed char v113;
unsigned short v114;
unsigned char v115;
v113 = -3 + 3;
v114 = v97 + 4;
v115 = v25 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 9: 
{
signed char v116;
signed short v117;
signed int v118;
v116 = 3 + 2;
v117 = v94 - v94;
v118 = v19 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 11: 
return;
case 12: 
return;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v121 = 1;
unsigned char v120 = 3;
unsigned short v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v122, unsigned char v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
signed int v126 = -2;
signed int v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
