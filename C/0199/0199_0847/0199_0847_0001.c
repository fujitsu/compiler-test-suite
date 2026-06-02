#include <stdlib.h>
signed char v1 (signed char, unsigned int, unsigned int);
signed char (*v2) (signed char, unsigned int, unsigned int) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
unsigned char v5 (signed int, unsigned int, unsigned int, signed int);
unsigned char (*v6) (signed int, unsigned int, unsigned int, signed int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (unsigned short, unsigned char);
unsigned int (*v10) (unsigned short, unsigned char) = v9;
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
static signed int v13 (signed short, unsigned int);
static signed int (*v14) (signed short, unsigned int) = v13;
static unsigned short v15 (signed int, unsigned short);
static unsigned short (*v16) (signed int, unsigned short) = v15;
extern signed int v17 (unsigned int, signed char, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned short);
extern unsigned char v19 (signed short, unsigned int, signed short);
extern unsigned char (*v20) (signed short, unsigned int, signed short);
extern void v21 (signed char);
extern void (*v22) (signed char);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (unsigned char);
unsigned char (*v28) (unsigned char) = v27;
extern signed short v29 (unsigned short, signed short);
extern signed short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = 1;
signed int v48 = 0;
signed short v47 = -1;

unsigned char v27 (unsigned char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 1;
signed char v52 = -4;
unsigned short v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed short v56 = 0;
signed int v55 = -4;
signed char v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (signed int v57, unsigned short v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 7U;
signed short v60 = 2;
unsigned char v59 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v62;
v62 = v25 ();
history[history_index++] = (int)v62;
}
break;
case 4: 
{
signed short v63;
unsigned int v64;
signed short v65;
unsigned char v66;
v63 = 3 - -2;
v64 = 5U + v61;
v65 = 2 - 2;
v66 = v19 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 6: 
{
unsigned short v67;
signed short v68;
signed short v69;
v67 = 3 - 5;
v68 = v60 + v60;
v69 = v29 (v67, v68);
history[history_index++] = (int)v69;
}
break;
case 8: 
return v58;
case 10: 
{
unsigned int v70;
v70 = v25 ();
history[history_index++] = (int)v70;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

static signed int v13 (signed short v71, unsigned int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -1;
signed int v74 = -2;
signed char v73 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v76;
unsigned short v77;
unsigned short v78;
v76 = -2 - 3;
v77 = 1 - 3;
v78 = v15 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 9: 
{
signed int v79;
unsigned short v80;
unsigned short v81;
v79 = v74 - -1;
v80 = 5 + 3;
v81 = v15 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 2;
unsigned int v85 = 0U;
unsigned int v84 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v87, unsigned int v88, unsigned int v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 3;
unsigned short v92 = 3;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v94, unsigned int v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
unsigned short v98 = 0;
signed char v97 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed short v100;
unsigned int v101;
signed int v102;
v100 = -4 - 0;
v101 = 6U + v95;
v102 = v13 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
