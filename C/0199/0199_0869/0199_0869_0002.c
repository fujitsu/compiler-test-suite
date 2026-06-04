#include <stdlib.h>
signed char v1 (signed char, signed char, signed char);
signed char (*v2) (signed char, signed char, signed char) = v1;
void v3 (signed char, unsigned int);
void (*v4) (signed char, unsigned int) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
unsigned char v7 (signed char, unsigned short, signed char);
unsigned char (*v8) (signed char, unsigned short, signed char) = v7;
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
unsigned char v11 (signed char, signed int, signed char);
unsigned char (*v12) (signed char, signed int, signed char) = v11;
unsigned char v13 (unsigned int, signed short, unsigned int);
unsigned char (*v14) (unsigned int, signed short, unsigned int) = v13;
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
static unsigned char v19 (unsigned int, signed short, signed int);
static unsigned char (*v20) (unsigned int, signed short, signed int) = v19;
unsigned char v21 (signed int, signed short, unsigned int);
unsigned char (*v22) (signed int, signed short, unsigned int) = v21;
extern signed int v23 (signed char, unsigned char);
extern signed int (*v24) (signed char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned int, signed int, unsigned char, unsigned short);
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = 0;
signed int v65 = -4;
signed char v64 = -2;

unsigned char v21 (signed int v67, signed short v68, unsigned int v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 3;
signed short v71 = -1;
unsigned short v70 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (unsigned int v73, signed short v74, signed int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 0U;
signed short v77 = 2;
unsigned char v76 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v79;
unsigned char v80;
signed short v81;
v79 = 6 + 7;
v80 = 6 + v76;
v81 = v29 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 3: 
{
unsigned short v82;
unsigned char v83;
signed short v84;
v82 = 3 + 4;
v83 = v76 - 7;
v84 = v29 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 5: 
{
unsigned short v85;
unsigned char v86;
signed short v87;
v85 = 2 - 2;
v86 = v76 + 2;
v87 = v29 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 7: 
return v76;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v88, signed short v89, unsigned int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -4;
signed char v92 = -4;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v94, signed int v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 0;
unsigned short v98 = 6;
unsigned int v97 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v100, unsigned short v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -2;
signed char v104 = -4;
signed short v103 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v106, unsigned int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = 1;
unsigned char v109 = 3;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v111, signed char v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -4;
signed char v115 = 1;
signed char v114 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v117;
signed short v118;
signed int v119;
unsigned char v120;
v117 = 3U - 5U;
v118 = -3 + 1;
v119 = -1 - -4;
v120 = v19 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 8: 
{
signed char v121;
signed char v122;
v121 = v116 + v116;
v122 = v5 (v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return v111;
default: abort ();
}
}
}
}
