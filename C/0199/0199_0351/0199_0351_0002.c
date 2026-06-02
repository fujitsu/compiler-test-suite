#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
static unsigned int v5 (unsigned int, unsigned char, unsigned char);
static unsigned int (*v6) (unsigned int, unsigned char, unsigned char) = v5;
unsigned char v7 (signed char, signed int, signed char, signed short);
unsigned char (*v8) (signed char, signed int, signed char, signed short) = v7;
static unsigned short v9 (signed char, signed int, unsigned short, signed char);
static unsigned short (*v10) (signed char, signed int, unsigned short, signed char) = v9;
extern void v11 (signed short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned char, signed int);
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char, signed char, unsigned char);
extern void v19 (unsigned short, signed short, signed short);
extern void (*v20) (unsigned short, signed short, signed short);
void v21 (signed short, unsigned char);
void (*v22) (signed short, unsigned char) = v21;
unsigned char v23 (signed char, unsigned int);
unsigned char (*v24) (signed char, unsigned int) = v23;
static unsigned short v25 (signed char, signed short);
static unsigned short (*v26) (signed char, signed short) = v25;
void v27 (void);
void (*v28) (void) = v27;
extern signed char v29 (signed int, signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v58 = 1U;
signed short v57 = -1;
signed short v56 = -1;

void v27 (void)
{
{
for (;;) {
unsigned char v61 = 3;
signed int v60 = -4;
signed int v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v25 (signed char v62, signed short v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 2;
unsigned char v65 = 0;
unsigned int v64 = 5U;
trace++;
switch (trace)
{
case 4: 
{
signed int v67;
signed int v68;
unsigned char v69;
signed short v70;
signed char v71;
v67 = -2 + -3;
v68 = 2 + 3;
v69 = 7 - 0;
v70 = 0 + -2;
v71 = v29 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 6: 
{
signed int v72;
signed int v73;
unsigned char v74;
signed short v75;
signed char v76;
v72 = 1 + -4;
v73 = 1 - -2;
v74 = 3 + v65;
v75 = 2 + 2;
v76 = v29 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 8: 
return 7;
default: abort ();
}
}
}
}

unsigned char v23 (signed char v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -2;
signed int v80 = -4;
signed int v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 7;
signed int v85 = -2;
unsigned int v84 = 7U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -2;
unsigned char v89 = 0;
unsigned char v88 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v9 (signed char v91, signed int v92, unsigned short v93, signed char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 5;
unsigned short v96 = 2;
unsigned char v95 = 1;
trace++;
switch (trace)
{
case 1: 
return v97;
default: abort ();
}
}
}
}

unsigned char v7 (signed char v98, signed int v99, signed char v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = 1;
signed char v103 = 2;
signed short v102 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (unsigned int v105, unsigned char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -4;
signed int v109 = -3;
signed short v108 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v111;
signed short v112;
unsigned short v113;
v111 = 1 - 2;
v112 = -2 + v108;
v113 = v25 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 9: 
{
signed short v114;
unsigned char v115;
signed int v116;
v114 = v108 - v110;
v115 = v106 + 6;
v116 = v109 - 2;
v11 (v114, v115, v116);
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned short v119 = 4;
signed short v118 = -1;
unsigned int v117 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v120;
signed int v121;
unsigned short v122;
signed char v123;
unsigned short v124;
v120 = 2 + 1;
v121 = 2 - -2;
v122 = v119 + 5;
v123 = 0 - -2;
v124 = v9 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 2: 
{
unsigned int v125;
unsigned char v126;
unsigned char v127;
unsigned int v128;
v125 = 4U - 0U;
v126 = 0 + 0;
v127 = 3 + 2;
v128 = v5 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
