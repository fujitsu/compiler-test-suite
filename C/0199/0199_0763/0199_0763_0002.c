#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
signed short v5 (unsigned int, unsigned char, unsigned short, unsigned char);
signed short (*v6) (unsigned int, unsigned char, unsigned short, unsigned char) = v5;
extern void v7 (unsigned char, signed short, unsigned char, unsigned int);
extern void (*v8) (unsigned char, signed short, unsigned char, unsigned int);
unsigned int v9 (signed short, signed char);
unsigned int (*v10) (signed short, signed char) = v9;
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
static unsigned short v15 (signed char, signed char);
static unsigned short (*v16) (signed char, signed char) = v15;
signed int v17 (unsigned short, unsigned int, unsigned int);
signed int (*v18) (unsigned short, unsigned int, unsigned int) = v17;
signed char v19 (unsigned short, unsigned short, unsigned char);
signed char (*v20) (unsigned short, unsigned short, unsigned char) = v19;
signed int v21 (signed char, unsigned char, signed char, unsigned short);
signed int (*v22) (signed char, unsigned char, signed char, unsigned short) = v21;
unsigned int v23 (signed int, signed short, signed short);
unsigned int (*v24) (signed int, signed short, signed short) = v23;
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern void v27 (signed int, unsigned int, unsigned int);
extern void (*v28) (signed int, unsigned int, unsigned int);
extern signed char v29 (unsigned short, unsigned short, signed short);
extern signed char (*v30) (unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = -4;
signed int v54 = -4;
signed int v53 = 3;

unsigned int v23 (signed int v56, signed short v57, signed short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 5;
signed char v60 = -3;
unsigned int v59 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v62, unsigned char v63, signed char v64, unsigned short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 5;
signed char v67 = -3;
unsigned short v66 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned short v69, unsigned short v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -1;
unsigned short v73 = 5;
unsigned char v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v75, unsigned int v76, unsigned int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 4;
signed short v79 = -1;
unsigned short v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (signed char v81, signed char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 5;
unsigned char v84 = 0;
unsigned char v83 = 6;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v86;
unsigned short v87;
signed short v88;
signed char v89;
v86 = 5 + v85;
v87 = v85 + v85;
v88 = -1 - 0;
v89 = v29 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 4: 
return v85;
case 6: 
{
unsigned short v90;
unsigned char v91;
v90 = 2 - 7;
v91 = v25 (v90);
history[history_index++] = (int)v91;
}
break;
case 8: 
{
unsigned short v92;
unsigned char v93;
v92 = v85 + 2;
v93 = v25 (v92);
history[history_index++] = (int)v93;
}
break;
case 10: 
{
unsigned short v94;
unsigned short v95;
signed short v96;
signed char v97;
v94 = v85 - 3;
v95 = v85 - 2;
v96 = 3 - 1;
v97 = v29 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v98, signed char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 3;
unsigned char v101 = 3;
unsigned int v100 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed char v103;
signed char v104;
unsigned short v105;
v103 = v99 + v99;
v104 = v99 - v99;
v105 = v15 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 5: 
{
signed char v106;
signed char v107;
unsigned short v108;
v106 = v99 + v99;
v107 = -4 + v99;
v108 = v15 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 13: 
return v100;
default: abort ();
}
}
}
}

signed short v5 (unsigned int v109, unsigned char v110, unsigned short v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 5U;
signed short v114 = -2;
unsigned char v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
