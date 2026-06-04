#include <stdlib.h>
signed char v1 (unsigned int, unsigned int);
signed char (*v2) (unsigned int, unsigned int) = v1;
extern signed short v3 (unsigned char, signed short, signed char);
extern signed short (*v4) (unsigned char, signed short, signed char);
signed int v5 (signed int, unsigned int);
signed int (*v6) (signed int, unsigned int) = v5;
unsigned int v7 (unsigned int, signed int, signed short, signed int);
unsigned int (*v8) (unsigned int, signed int, signed short, signed int) = v7;
extern signed int v9 (signed int, signed short, unsigned char);
extern signed int (*v10) (signed int, signed short, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, unsigned char, unsigned short);
extern signed int (*v16) (signed int, unsigned char, unsigned short);
extern signed char v17 (signed int, unsigned int, unsigned short, unsigned char);
extern signed char (*v18) (signed int, unsigned int, unsigned short, unsigned char);
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
extern void v21 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v22) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed char);
extern unsigned short (*v24) (unsigned char, signed char);
static signed short v25 (void);
static signed short (*v26) (void) = v25;
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern unsigned int v29 (unsigned int, signed int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = 0;
signed int v68 = -3;
unsigned char v67 = 6;

static signed short v25 (void)
{
{
for (;;) {
signed char v72 = -3;
unsigned short v71 = 4;
signed short v70 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v73;
signed int v74;
signed char v75;
signed short v76;
unsigned int v77;
v73 = 0U - 5U;
v74 = -1 + 2;
v75 = -3 - v72;
v76 = v70 + -1;
v77 = v29 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 3: 
return -4;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v78, signed int v79, signed short v80, signed int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 1U;
unsigned short v83 = 7;
signed short v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v85, unsigned int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 4;
unsigned short v88 = 6;
signed int v87 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v90, unsigned int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 1;
signed int v93 = 3;
unsigned int v92 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed short v95;
v95 = v25 ();
history[history_index++] = (int)v95;
}
break;
case 4: 
{
unsigned int v96;
unsigned int v97;
signed short v98;
v96 = v92 + v91;
v97 = v91 + v91;
v98 = v27 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
unsigned char v99;
signed short v100;
signed char v101;
signed short v102;
v99 = 3 + 0;
v100 = 0 + 1;
v101 = 2 + -3;
v102 = v3 (v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 10: 
{
signed int v103;
unsigned char v104;
unsigned short v105;
signed int v106;
v103 = v93 + -3;
v104 = 0 + 2;
v105 = 0 + 5;
v106 = v15 (v103, v104, v105);
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
