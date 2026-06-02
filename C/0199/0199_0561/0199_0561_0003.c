#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
static unsigned int v13 (signed short);
static unsigned int (*v14) (signed short) = v13;
extern unsigned short v15 (signed int, unsigned int);
extern unsigned short (*v16) (signed int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
static void v19 (unsigned int);
static void (*v20) (unsigned int) = v19;
extern unsigned short v21 (unsigned char, signed char, signed short);
extern unsigned short (*v22) (unsigned char, signed char, signed short);
extern unsigned int v23 (unsigned int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v24) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern signed short v27 (signed char, unsigned char);
extern signed short (*v28) (signed char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -2;
unsigned char v84 = 7;
signed char v83 = -3;

static void v19 (unsigned int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -4;
unsigned int v88 = 6U;
signed short v87 = 0;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

static unsigned int v13 (signed short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 2;
unsigned char v92 = 3;
signed int v91 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v94;
signed int v95;
v94 = 6 - 6;
v95 = v25 (v94);
history[history_index++] = (int)v95;
}
break;
case 7: 
{
unsigned char v96;
signed char v97;
signed short v98;
unsigned short v99;
v96 = v92 - 1;
v97 = 2 - 0;
v98 = 3 + v93;
v99 = v21 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 9: 
{
unsigned char v100;
signed char v101;
signed short v102;
unsigned short v103;
v100 = 6 - v92;
v101 = 0 + 1;
v102 = v93 + v90;
v103 = v21 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 5;
signed short v106 = -2;
signed int v105 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v108;
v108 = 7U - 4U;
v19 (v108);
}
break;
case 4: 
{
signed short v109;
unsigned int v110;
v109 = v106 - v104;
v110 = v13 (v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return v107;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed char v113 = 1;
unsigned int v112 = 4U;
unsigned int v111 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed int v114;
unsigned char v115;
v114 = 2 - 0;
v115 = v5 (v114);
history[history_index++] = (int)v115;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
