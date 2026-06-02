#include <stdlib.h>
unsigned int v1 (signed char);
unsigned int (*v2) (signed char) = v1;
extern unsigned int v3 (signed int, unsigned int, signed short);
extern unsigned int (*v4) (signed int, unsigned int, signed short);
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
extern signed int v7 (signed short, signed int, signed short, signed short);
extern signed int (*v8) (signed short, signed int, signed short, signed short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (signed char, unsigned int, unsigned short, signed short);
unsigned char v13 (unsigned short, signed int);
unsigned char (*v14) (unsigned short, signed int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
unsigned short v21 (signed short, signed int);
unsigned short (*v22) (signed short, signed int) = v21;
static signed short v23 (void);
static signed short (*v24) (void) = v23;
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (signed char, signed char, unsigned short, unsigned short);
extern signed short (*v28) (signed char, signed char, unsigned short, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 0;
signed int v70 = -4;
signed int v69 = 2;

static signed short v23 (void)
{
{
for (;;) {
unsigned int v74 = 3U;
signed int v73 = -4;
signed int v72 = 3;
trace++;
switch (trace)
{
case 1: 
{
v29 ();
}
break;
case 5: 
{
signed char v75;
signed char v76;
unsigned short v77;
unsigned short v78;
signed short v79;
v75 = -2 - -4;
v76 = -1 + 1;
v77 = 0 - 1;
v78 = 0 - 3;
v79 = v27 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 7: 
{
signed char v80;
signed char v81;
unsigned short v82;
unsigned short v83;
signed short v84;
v80 = -1 - 1;
v81 = -3 + -2;
v82 = 7 - 6;
v83 = 1 - 7;
v84 = v27 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 15: 
return -3;
case 19: 
return 2;
default: abort ();
}
}
}
}

unsigned short v21 (signed short v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 4;
unsigned char v88 = 0;
unsigned char v87 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed short v90;
signed int v91;
unsigned short v92;
v90 = -4 + 3;
v91 = v86 - 3;
v92 = v21 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
{
signed short v93;
v93 = v23 ();
history[history_index++] = (int)v93;
}
break;
case 9: 
{
signed short v94;
signed int v95;
unsigned short v96;
v94 = -1 - v85;
v95 = v86 - v86;
v96 = v21 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 10: 
{
signed short v97;
signed int v98;
unsigned short v99;
v97 = -4 - v85;
v98 = -2 + v86;
v99 = v21 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 11: 
return 6;
case 12: 
return 6;
case 13: 
return 0;
case 16: 
return 7;
case 17: 
return 0;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -2;
unsigned short v103 = 6;
unsigned char v102 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 4U;
unsigned char v107 = 6;
unsigned int v106 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed short v109;
v109 = v23 ();
history[history_index++] = (int)v109;
}
break;
case 20: 
return v108;
default: abort ();
}
}
}
}
