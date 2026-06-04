#include <stdlib.h>
void v1 (unsigned int, signed int, signed short, unsigned int);
void (*v2) (unsigned int, signed int, signed short, unsigned int) = v1;
extern void v3 (signed short, signed int, unsigned char, unsigned char);
extern void (*v4) (signed short, signed int, unsigned char, unsigned char);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int);
void v7 (unsigned short, signed short, unsigned int, unsigned int);
void (*v8) (unsigned short, signed short, unsigned int, unsigned int) = v7;
extern signed int v9 (unsigned int, unsigned short, unsigned short, signed short);
extern signed int (*v10) (unsigned int, unsigned short, unsigned short, signed short);
extern void v11 (signed char, signed int, signed char);
extern void (*v12) (signed char, signed int, signed char);
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
static void v17 (unsigned int, unsigned short, signed int);
static void (*v18) (unsigned int, unsigned short, signed int) = v17;
extern signed int v19 (signed char, signed int, signed int, unsigned short);
extern signed int (*v20) (signed char, signed int, signed int, unsigned short);
unsigned char v21 (unsigned char, unsigned int, signed char, signed short);
unsigned char (*v22) (unsigned char, unsigned int, signed char, signed short) = v21;
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 0;
unsigned char v54 = 0;
unsigned char v53 = 7;

unsigned char v21 (unsigned char v56, unsigned int v57, signed char v58, signed short v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 7;
unsigned int v61 = 6U;
unsigned short v60 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v63;
signed char v64;
v63 = v56 + v56;
v64 = v23 (v63);
history[history_index++] = (int)v64;
}
break;
case 7: 
{
unsigned char v65;
v65 = v25 ();
history[history_index++] = (int)v65;
}
break;
case 9: 
{
unsigned char v66;
signed char v67;
v66 = 4 - 5;
v67 = v23 (v66);
history[history_index++] = (int)v67;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

static void v17 (unsigned int v68, unsigned short v69, signed int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 1;
unsigned short v72 = 0;
unsigned char v71 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v74;
unsigned char v75;
unsigned int v76;
signed int v77;
v74 = 1 + 2;
v75 = 1 + v73;
v76 = v68 + 7U;
v77 = v13 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

void v7 (unsigned short v78, signed short v79, unsigned int v80, unsigned int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 1;
signed int v83 = 1;
signed short v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v85, signed int v86, signed short v87, unsigned int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 6;
signed int v90 = -4;
unsigned char v89 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v92;
signed int v93;
signed char v94;
v92 = -3 - -1;
v93 = v90 + v90;
v94 = 0 - 2;
v11 (v92, v93, v94);
}
break;
case 2: 
{
unsigned int v95;
unsigned short v96;
signed int v97;
v95 = 7U + v88;
v96 = 2 - 0;
v97 = v86 - v90;
v17 (v95, v96, v97);
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
