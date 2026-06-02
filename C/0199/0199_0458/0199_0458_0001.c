#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
signed int v3 (unsigned char, unsigned char, signed char, unsigned int);
signed int (*v4) (unsigned char, unsigned char, signed char, unsigned int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
static unsigned short v7 (unsigned short, signed char, unsigned int);
static unsigned short (*v8) (unsigned short, signed char, unsigned int) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
static signed char v13 (unsigned char, unsigned short);
static signed char (*v14) (unsigned char, unsigned short) = v13;
static unsigned char v15 (unsigned char);
static unsigned char (*v16) (unsigned char) = v15;
unsigned short v17 (unsigned short, unsigned int);
unsigned short (*v18) (unsigned short, unsigned int) = v17;
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
signed short v23 (unsigned char, signed char, unsigned char, unsigned short);
signed short (*v24) (unsigned char, signed char, unsigned char, unsigned short) = v23;
extern signed short v25 (signed char, unsigned int, signed int, signed char);
extern signed short (*v26) (signed char, unsigned int, signed int, signed char);
extern signed char v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern void v29 (unsigned short, unsigned char, unsigned int, unsigned char);
extern void (*v30) (unsigned short, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v49 = 0;
signed char v48 = 0;
signed short v47 = -4;

signed short v23 (unsigned char v50, signed char v51, unsigned char v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 3;
unsigned short v55 = 0;
unsigned short v54 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v57, unsigned int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 5;
unsigned int v60 = 4U;
signed short v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v15 (unsigned char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 6;
signed char v64 = -1;
unsigned short v63 = 7;
trace++;
switch (trace)
{
case 5: 
return 7;
case 7: 
{
unsigned short v66;
unsigned char v67;
v66 = v63 + v63;
v67 = v11 (v66);
history[history_index++] = (int)v67;
}
break;
case 9: 
return v62;
default: abort ();
}
}
}
}

static signed char v13 (unsigned char v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
unsigned char v71 = 1;
unsigned short v70 = 0;
trace++;
switch (trace)
{
case 2: 
return -3;
case 11: 
return -2;
default: abort ();
}
}
}
}

static unsigned short v7 (unsigned short v73, signed char v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -1;
unsigned char v77 = 5;
unsigned short v76 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v79;
unsigned short v80;
signed char v81;
v79 = v77 + v77;
v80 = v73 + v76;
v81 = v13 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 3: 
return v73;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v82, unsigned char v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 2;
signed short v87 = 1;
unsigned int v86 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned short v91 = 3;
unsigned char v90 = 6;
signed int v89 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v92;
signed char v93;
unsigned int v94;
unsigned short v95;
v92 = 7 - v91;
v93 = 2 - 3;
v94 = 0U - 6U;
v95 = v7 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
unsigned char v96;
unsigned char v97;
v96 = v90 - 1;
v97 = v15 (v96);
history[history_index++] = (int)v97;
}
break;
case 6: 
{
unsigned char v98;
unsigned char v99;
v98 = 0 + 4;
v99 = v15 (v98);
history[history_index++] = (int)v99;
}
break;
case 10: 
{
unsigned char v100;
unsigned short v101;
signed char v102;
v100 = v90 - 0;
v101 = v91 - 4;
v102 = v13 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
