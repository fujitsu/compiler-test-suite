#include <stdlib.h>
unsigned char v1 (signed char, signed int, signed char);
unsigned char (*v2) (signed char, signed int, signed char) = v1;
static unsigned short v3 (signed int, unsigned int, signed int, signed short);
static unsigned short (*v4) (signed int, unsigned int, signed int, signed short) = v3;
static unsigned int v5 (signed char);
static unsigned int (*v6) (signed char) = v5;
extern unsigned short v7 (signed char, unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (signed char, unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int, unsigned char, signed char);
extern void (*v14) (unsigned int, unsigned char, signed char);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
signed char v19 (signed int, signed short, signed char);
signed char (*v20) (signed int, signed short, signed char) = v19;
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
signed char v27 (unsigned char, unsigned char);
signed char (*v28) (unsigned char, unsigned char) = v27;
static signed int v29 (void);
static signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v45 = -4;
unsigned char v44 = 7;
unsigned int v43 = 2U;

static signed int v29 (void)
{
{
for (;;) {
unsigned int v48 = 2U;
unsigned int v47 = 5U;
unsigned char v46 = 6;
trace++;
switch (trace)
{
case 9: 
{
signed char v49;
unsigned int v50;
v49 = 0 + -4;
v50 = v5 (v49);
history[history_index++] = (int)v50;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

signed char v27 (unsigned char v51, unsigned char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 4U;
unsigned char v54 = 6;
unsigned int v53 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v56, signed short v57, signed char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 1U;
unsigned int v60 = 3U;
unsigned char v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 2;
signed char v64 = 0;
unsigned short v63 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -2;
unsigned short v68 = 0;
signed int v67 = -1;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v70;
unsigned short v71;
v70 = 4U - 4U;
v71 = v25 (v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

static unsigned short v3 (signed int v72, unsigned int v73, signed int v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -4;
signed char v77 = -1;
unsigned short v76 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v79;
unsigned char v80;
signed char v81;
v79 = 3U + v73;
v80 = 2 + 7;
v81 = v78 - v78;
v13 (v79, v80, v81);
}
break;
case 5: 
return v76;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v82, signed int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -4;
signed short v86 = -4;
unsigned char v85 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v88;
unsigned int v89;
signed int v90;
signed short v91;
unsigned short v92;
v88 = v87 + v83;
v89 = 3U + 6U;
v90 = v87 - -3;
v91 = -3 - v86;
v92 = v3 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 6: 
{
unsigned short v93;
signed short v94;
signed int v95;
v93 = 4 + 1;
v94 = v86 + v86;
v95 = v23 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 8: 
{
signed int v96;
v96 = v29 ();
history[history_index++] = (int)v96;
}
break;
case 14: 
return v85;
default: abort ();
}
}
}
}
