#include <stdlib.h>
signed int v1 (unsigned int);
signed int (*v2) (unsigned int) = v1;
unsigned short v3 (signed char, signed char, signed int, unsigned short);
unsigned short (*v4) (signed char, signed char, signed int, unsigned short) = v3;
static unsigned char v5 (unsigned int, unsigned short);
static unsigned char (*v6) (unsigned int, unsigned short) = v5;
extern signed int v7 (unsigned int, signed char, unsigned int);
extern signed int (*v8) (unsigned int, signed char, unsigned int);
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (signed char, signed int, unsigned char, signed short);
extern unsigned short (*v20) (signed char, signed int, unsigned char, signed short);
static unsigned char v21 (signed char);
static unsigned char (*v22) (signed char) = v21;
extern unsigned short v23 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned char, unsigned char, unsigned char);
static void v25 (signed char, signed char, signed char, signed int);
static void (*v26) (signed char, signed char, signed char, signed int) = v25;
signed short v27 (unsigned int, signed char, unsigned int);
signed short (*v28) (unsigned int, signed char, unsigned int) = v27;
extern signed short v29 (signed short, signed short, signed char, signed short);
extern signed short (*v30) (signed short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v43 = 2;
signed char v42 = 2;
unsigned int v41 = 3U;

signed short v27 (unsigned int v44, signed char v45, unsigned int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 3;
unsigned int v48 = 2U;
signed char v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v25 (signed char v50, signed char v51, signed char v52, signed int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -2;
signed char v55 = 2;
signed short v54 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v57;
unsigned short v58;
unsigned char v59;
v57 = 6U - 6U;
v58 = 3 + 0;
v59 = v5 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static unsigned char v21 (signed char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned char v62 = 1;
signed int v61 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed char v64;
signed char v65;
signed char v66;
signed int v67;
v64 = v60 + v60;
v65 = v60 + v60;
v66 = -4 - v60;
v67 = v61 + v61;
v25 (v64, v65, v66, v67);
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 3;
signed short v70 = -4;
unsigned short v69 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (unsigned int v72, unsigned short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 1;
signed short v75 = -2;
unsigned char v74 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v77;
signed int v78;
unsigned char v79;
signed short v80;
unsigned short v81;
v77 = -2 - 1;
v78 = 2 - -2;
v79 = v74 + 6;
v80 = v76 + -1;
v81 = v19 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 5: 
{
signed char v82;
signed int v83;
unsigned char v84;
signed short v85;
unsigned short v86;
v82 = -2 - -2;
v83 = 2 - -4;
v84 = v74 - v74;
v85 = v75 - v76;
v86 = v19 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 7: 
{
signed char v87;
signed int v88;
unsigned char v89;
signed short v90;
unsigned short v91;
v87 = -3 + 1;
v88 = 0 - -1;
v89 = 3 - 2;
v90 = v75 - v75;
v91 = v19 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 9: 
{
unsigned int v92;
signed short v93;
v92 = v72 + v72;
v93 = v15 (v92);
history[history_index++] = (int)v93;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v3 (signed char v94, signed char v95, signed int v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 1;
unsigned short v99 = 0;
unsigned char v98 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 6;
signed short v103 = -2;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed char v105;
unsigned char v106;
v105 = 2 - 0;
v106 = v21 (v105);
history[history_index++] = (int)v106;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
