#include <stdlib.h>
signed char v1 (signed short, signed int);
signed char (*v2) (signed short, signed int) = v1;
extern unsigned int v3 (unsigned char, signed short, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, signed short, signed int, unsigned short);
static signed short v5 (unsigned int, unsigned char, unsigned char);
static signed short (*v6) (unsigned int, unsigned char, unsigned char) = v5;
extern unsigned int v7 (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned int (*v8) (unsigned int, unsigned short, signed short, unsigned int);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
extern unsigned char v11 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v12) (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char v13 (signed int, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (signed int, signed int, unsigned char, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
static unsigned short v17 (unsigned char, signed int, signed short);
static unsigned short (*v18) (unsigned char, signed int, signed short) = v17;
extern signed short v19 (signed short, signed short, unsigned int);
extern signed short (*v20) (signed short, signed short, unsigned int);
extern signed char v21 (signed int, signed short, unsigned int, unsigned int);
extern signed char (*v22) (signed int, signed short, unsigned int, unsigned int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed short v25 (signed char, signed int, unsigned int, signed short);
extern signed short (*v26) (signed char, signed int, unsigned int, signed short);
extern unsigned char v27 (unsigned int, signed int, unsigned short, signed int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned short, signed int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = 1;
signed int v52 = 2;
signed char v51 = 1;

unsigned char v29 (void)
{
{
for (;;) {
signed int v56 = -3;
unsigned int v55 = 1U;
signed short v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned char v57, signed int v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 3;
unsigned int v61 = 4U;
signed short v60 = -4;
trace++;
switch (trace)
{
case 9: 
{
signed char v63;
signed int v64;
unsigned int v65;
signed short v66;
signed short v67;
v63 = -2 + 2;
v64 = -2 + 2;
v65 = v61 - v61;
v66 = v62 + v62;
v67 = v25 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
unsigned char v70 = 6;
unsigned short v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v5 (unsigned int v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 1;
signed char v76 = 2;
signed short v75 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed int v78;
signed int v79;
unsigned char v80;
unsigned short v81;
unsigned char v82;
v78 = -4 - 0;
v79 = -3 + -2;
v80 = v74 + v73;
v81 = 4 - 0;
v82 = v13 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 7: 
return v75;
default: abort ();
}
}
}
}

signed char v1 (signed short v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 3;
unsigned char v86 = 4;
signed int v85 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v88;
signed short v89;
unsigned int v90;
unsigned int v91;
signed char v92;
v88 = v85 - v85;
v89 = 3 - v83;
v90 = 4U + 7U;
v91 = 4U - 1U;
v92 = v21 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 2: 
{
unsigned short v93;
v93 = v15 ();
history[history_index++] = (int)v93;
}
break;
case 4: 
{
unsigned int v94;
unsigned char v95;
unsigned char v96;
signed short v97;
v94 = 3U + 7U;
v95 = v86 - 6;
v96 = v86 - v86;
v97 = v5 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
{
unsigned char v98;
signed int v99;
signed short v100;
unsigned short v101;
v98 = 4 + v86;
v99 = v87 + v87;
v100 = 3 + v83;
v101 = v17 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
