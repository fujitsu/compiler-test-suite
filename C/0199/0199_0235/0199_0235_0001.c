#include <stdlib.h>
signed int v1 (signed int, signed short, signed char, unsigned int);
signed int (*v2) (signed int, signed short, signed char, unsigned int) = v1;
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (unsigned int, unsigned short);
extern signed short (*v6) (unsigned int, unsigned short);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern unsigned short v9 (unsigned short);
extern unsigned short (*v10) (unsigned short);
extern unsigned char v11 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v12) (unsigned char, unsigned short, signed int, unsigned char);
static void v13 (unsigned int, unsigned char);
static void (*v14) (unsigned int, unsigned char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
signed int v21 (unsigned int, unsigned int, unsigned char, signed int);
signed int (*v22) (unsigned int, unsigned int, unsigned char, signed int) = v21;
extern unsigned int v23 (signed char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, signed short, unsigned char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned char, signed int, signed short, unsigned int);
extern void (*v30) (unsigned char, signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 4U;
unsigned short v55 = 1;
unsigned int v54 = 4U;

signed int v21 (unsigned int v57, unsigned int v58, unsigned char v59, signed int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 1;
signed char v62 = 1;
signed int v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed char v66 = -3;
signed char v65 = 3;
unsigned char v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v13 (unsigned int v67, unsigned char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 2;
unsigned short v70 = 3;
signed char v69 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v72;
v72 = v17 ();
history[history_index++] = (int)v72;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v7 (unsigned short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = -3;
unsigned char v75 = 6;
unsigned short v74 = 5;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v77;
v77 = 3 - v74;
v7 (v77);
}
break;
case 9: 
{
unsigned int v78;
unsigned char v79;
v78 = 1U + 2U;
v79 = v75 + v75;
v13 (v78, v79);
}
break;
case 13: 
return;
case 14: 
return;
default: abort ();
}
}
}
}

signed int v1 (signed int v80, signed short v81, signed char v82, unsigned int v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 5U;
unsigned int v85 = 7U;
signed short v84 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v87;
unsigned short v88;
signed int v89;
v87 = v81 + v81;
v88 = 5 + 2;
v89 = v25 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed short v90;
unsigned short v91;
signed int v92;
v90 = 0 - v81;
v91 = 0 - 1;
v92 = v25 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
{
unsigned short v93;
unsigned short v94;
v93 = 7 + 7;
v94 = v9 (v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
{
unsigned short v95;
signed short v96;
signed char v97;
signed int v98;
v95 = 4 - 1;
v96 = -3 + 2;
v97 = v82 - -3;
v98 = v3 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
