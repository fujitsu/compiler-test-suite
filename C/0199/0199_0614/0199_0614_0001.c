#include <stdlib.h>
extern unsigned char v3 (unsigned short, signed short, signed short);
extern unsigned char (*v4) (unsigned short, signed short, signed short);
signed int v5 (signed short, unsigned char, signed int, signed char);
signed int (*v6) (signed short, unsigned char, signed int, signed char) = v5;
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
signed char v9 (signed int);
signed char (*v10) (signed int) = v9;
extern unsigned char v11 (signed int, unsigned char, signed char);
extern unsigned char (*v12) (signed int, unsigned char, signed char);
unsigned short v13 (signed short, signed short);
unsigned short (*v14) (signed short, signed short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
signed int v21 (unsigned short, signed int);
signed int (*v22) (unsigned short, signed int) = v21;
signed short v23 (signed int, signed int, unsigned short, signed int);
signed short (*v24) (signed int, signed int, unsigned short, signed int) = v23;
static signed int v25 (unsigned short);
static signed int (*v26) (unsigned short) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 7U;
signed short v55 = -1;
unsigned short v54 = 5;

static signed int v25 (unsigned short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -2;
signed short v59 = -1;
unsigned char v58 = 3;
trace++;
switch (trace)
{
case 6: 
return -1;
default: abort ();
}
}
}
}

signed short v23 (signed int v61, signed int v62, unsigned short v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 4;
unsigned short v66 = 4;
signed char v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v68, signed int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 0;
signed char v71 = -2;
unsigned int v70 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed char v75 = -1;
signed char v74 = -4;
signed int v73 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v76;
signed int v77;
v76 = 2 - 3;
v77 = v25 (v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
return v73;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 6;
unsigned short v81 = 5;
signed char v80 = 1;
trace++;
switch (trace)
{
case 3: 
return v81;
default: abort ();
}
}
}
}

signed char v9 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -1;
signed int v85 = 0;
signed int v84 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 0;
signed char v89 = 0;
unsigned char v88 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v91;
unsigned char v92;
signed char v93;
unsigned char v94;
v91 = -1 + -1;
v92 = 1 - v88;
v93 = -3 - v89;
v94 = v11 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 9: 
{
unsigned short v95;
v95 = v27 ();
history[history_index++] = (int)v95;
}
break;
case 11: 
return v87;
default: abort ();
}
}
}
}

signed int v5 (signed short v96, unsigned char v97, signed int v98, signed char v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = 0;
signed char v101 = -1;
signed char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
