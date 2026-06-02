#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (unsigned char, signed int, unsigned short, signed int);
extern void (*v6) (unsigned char, signed int, unsigned short, signed int);
void v7 (signed int, unsigned char, signed char);
void (*v8) (signed int, unsigned char, signed char) = v7;
static signed short v9 (signed short, signed short, unsigned char);
static signed short (*v10) (signed short, signed short, unsigned char) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
signed int v13 (unsigned int, signed int, unsigned int);
signed int (*v14) (unsigned int, signed int, unsigned int) = v13;
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed char);
extern unsigned char (*v18) (signed char, unsigned short, signed char);
extern signed int v19 (unsigned int, unsigned char, unsigned char);
extern signed int (*v20) (unsigned int, unsigned char, unsigned char);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern signed short v23 (unsigned int, unsigned short, unsigned int);
extern signed short (*v24) (unsigned int, unsigned short, unsigned int);
static signed short v25 (signed int, signed int, unsigned short);
static signed short (*v26) (signed int, signed int, unsigned short) = v25;
signed short v27 (unsigned short, unsigned short, unsigned char, signed char);
signed short (*v28) (unsigned short, unsigned short, unsigned char, signed char) = v27;
extern signed char v29 (unsigned int, signed short, signed int);
extern signed char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v50 = 5;
signed int v49 = -1;
unsigned int v48 = 4U;

signed short v27 (unsigned short v51, unsigned short v52, unsigned char v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -4;
unsigned char v56 = 3;
signed int v55 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v58;
signed short v59;
unsigned char v60;
signed short v61;
v58 = -1 + -1;
v59 = -4 - 2;
v60 = v56 - 1;
v61 = v9 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

static signed short v25 (signed int v62, signed int v63, unsigned short v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 2;
unsigned int v66 = 7U;
signed char v65 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v68;
signed short v69;
signed int v70;
signed char v71;
v68 = 3U + v66;
v69 = v67 + v67;
v70 = v63 + v63;
v71 = v29 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 9: 
return v67;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v72, signed int v73, unsigned int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -4;
unsigned short v76 = 6;
unsigned short v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v9 (signed short v78, signed short v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 0;
signed short v82 = 1;
signed int v81 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v84;
signed short v85;
signed int v86;
signed char v87;
v84 = 0U + 7U;
v85 = v82 - -4;
v86 = v81 + 2;
v87 = v29 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 4: 
{
unsigned int v88;
signed short v89;
signed int v90;
signed char v91;
v88 = 1U + 4U;
v89 = v82 + 1;
v90 = v81 + v81;
v91 = v29 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 6: 
{
signed int v92;
signed int v93;
unsigned short v94;
signed short v95;
v92 = 2 + -4;
v93 = 2 - v81;
v94 = v83 - v83;
v95 = v25 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}

void v7 (signed int v96, unsigned char v97, signed char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -1;
unsigned char v100 = 0;
signed char v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
