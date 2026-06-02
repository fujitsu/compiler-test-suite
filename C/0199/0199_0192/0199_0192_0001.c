#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (unsigned short, unsigned int, signed int);
signed short (*v4) (unsigned short, unsigned int, signed int) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned short, signed short);
extern void (*v10) (unsigned int, unsigned short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (unsigned int, signed char, signed short);
extern unsigned char (*v14) (unsigned int, signed char, signed short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
extern unsigned int v21 (unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (unsigned short, unsigned int, signed short);
extern unsigned int v23 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed short, signed int);
static unsigned char v25 (unsigned int, unsigned char, signed char, signed char);
static unsigned char (*v26) (unsigned int, unsigned char, signed char, signed char) = v25;
void v27 (void);
void (*v28) (void) = v27;
static signed short v29 (unsigned short, unsigned short, signed short);
static signed short (*v30) (unsigned short, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 2;
signed short v58 = 1;
signed short v57 = -3;

static signed short v29 (unsigned short v60, unsigned short v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 2U;
signed int v64 = -2;
signed char v63 = -1;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v66;
unsigned int v67;
signed short v68;
unsigned int v69;
v66 = 1 + v61;
v67 = v65 + 2U;
v68 = v62 - 0;
v69 = v21 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
signed short v72 = 2;
unsigned short v71 = 6;
signed char v70 = 2;
trace++;
switch (trace)
{
case 1: 
return;
case 5: 
return;
default: abort ();
}
}
}
}

static unsigned char v25 (unsigned int v73, unsigned char v74, signed char v75, signed char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 6;
unsigned int v78 = 5U;
unsigned short v77 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v80;
unsigned short v81;
signed short v82;
signed short v83;
v80 = v79 - 4;
v81 = 6 + v77;
v82 = -2 - -3;
v83 = v29 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 7U;
unsigned char v86 = 2;
unsigned int v85 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v88, unsigned int v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -4;
signed char v92 = 1;
signed short v91 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v94;
unsigned short v95;
signed short v96;
v94 = v89 - 1U;
v95 = 7 - 7;
v96 = 3 + 3;
v9 (v94, v95, v96);
}
break;
case 7: 
{
unsigned int v97;
unsigned char v98;
signed char v99;
signed char v100;
unsigned char v101;
v97 = v89 - v89;
v98 = 5 - 5;
v99 = v92 - v92;
v100 = 1 - -1;
v101 = v25 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 13: 
return v91;
default: abort ();
}
}
}
}
