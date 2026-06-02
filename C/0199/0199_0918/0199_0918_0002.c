#include <stdlib.h>
signed char v1 (unsigned short, signed int, signed int, signed short);
signed char (*v2) (unsigned short, signed int, signed int, signed short) = v1;
void v3 (void);
void (*v4) (void) = v3;
signed int v5 (unsigned int, unsigned char, unsigned short);
signed int (*v6) (unsigned int, unsigned char, unsigned short) = v5;
extern signed char v7 (unsigned short, signed short);
extern signed char (*v8) (unsigned short, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed short v11 (signed char, signed short, unsigned char);
signed short (*v12) (signed char, signed short, unsigned char) = v11;
unsigned char v13 (signed char, unsigned char, signed char);
unsigned char (*v14) (signed char, unsigned char, signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed short, unsigned short, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
static signed char v23 (unsigned short, signed short);
static signed char (*v24) (unsigned short, signed short) = v23;
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed char v29 (signed char, signed char, signed int, signed char);
signed char (*v30) (signed char, signed char, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 4;
unsigned short v54 = 4;
signed int v53 = -2;

signed char v29 (signed char v56, signed char v57, signed int v58, signed char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 4;
signed short v61 = -1;
signed short v60 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v23 (unsigned short v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = 0;
unsigned short v66 = 1;
unsigned char v65 = 4;
trace++;
switch (trace)
{
case 11: 
return v67;
default: abort ();
}
}
}
}

unsigned char v13 (signed char v68, unsigned char v69, signed char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
signed short v72 = 2;
unsigned char v71 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v74, signed short v75, unsigned char v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = 1;
unsigned char v78 = 4;
unsigned int v77 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v80, unsigned char v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -4;
unsigned short v84 = 0;
signed char v83 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v88 = 2;
unsigned char v87 = 5;
signed short v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v89, signed int v90, signed int v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 1;
unsigned int v94 = 2U;
signed short v93 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v96;
signed short v97;
signed char v98;
v96 = v95 - 6;
v97 = 1 + v93;
v98 = v7 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 2: 
{
signed int v99;
v99 = v15 ();
history[history_index++] = (int)v99;
}
break;
case 4: 
{
signed short v100;
v100 = v17 ();
history[history_index++] = (int)v100;
}
break;
case 6: 
{
signed short v101;
v101 = v17 ();
history[history_index++] = (int)v101;
}
break;
case 8: 
{
unsigned char v102;
unsigned short v103;
v102 = 7 + 7;
v103 = v21 (v102);
history[history_index++] = (int)v103;
}
break;
case 10: 
{
unsigned short v104;
signed short v105;
signed char v106;
v104 = 7 - v89;
v105 = v93 + 0;
v106 = v23 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
