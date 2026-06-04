#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char, signed int, signed short);
extern unsigned short (*v6) (unsigned char, signed int, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed char, signed int);
extern signed char (*v10) (signed short, unsigned short, signed char, signed int);
void v11 (void);
void (*v12) (void) = v11;
extern unsigned int v13 (signed int, signed short, unsigned short);
extern unsigned int (*v14) (signed int, signed short, unsigned short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned char v19 (unsigned int, unsigned short);
extern unsigned char (*v20) (unsigned int, unsigned short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
static signed short v23 (signed char, unsigned int, unsigned char, unsigned short);
static signed short (*v24) (signed char, unsigned int, unsigned char, unsigned short) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = -3;
unsigned short v60 = 5;
signed int v59 = -4;

signed short v29 (void)
{
{
for (;;) {
signed int v64 = 3;
signed int v63 = -4;
signed int v62 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed char v67 = 0;
signed int v66 = 2;
signed int v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (signed char v68, unsigned int v69, unsigned char v70, unsigned short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -4;
signed short v73 = -3;
signed char v72 = -3;
trace++;
switch (trace)
{
case 1: 
return v73;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v77 = 5;
unsigned short v76 = 5;
signed short v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed char v80 = -2;
unsigned char v79 = 3;
signed short v78 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 1;
unsigned int v83 = 4U;
unsigned char v82 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v85;
unsigned int v86;
unsigned char v87;
unsigned short v88;
signed short v89;
v85 = 1 - -4;
v86 = 2U + 0U;
v87 = v82 + v84;
v88 = 2 + 7;
v89 = v23 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed short v90;
unsigned char v91;
v90 = 2 + -3;
v91 = v27 (v90);
history[history_index++] = (int)v91;
}
break;
case 6: 
{
signed int v92;
signed char v93;
v92 = -1 - v81;
v93 = v1 (v92);
history[history_index++] = (int)v93;
}
break;
case 7: 
{
signed char v94;
v94 = v3 ();
history[history_index++] = (int)v94;
}
break;
case 9: 
{
signed int v95;
signed short v96;
unsigned short v97;
unsigned int v98;
v95 = 2 - v81;
v96 = -1 - -3;
v97 = 5 - 4;
v98 = v13 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 13: 
return 3;
case 14: 
return -3;
default: abort ();
}
}
}
}
