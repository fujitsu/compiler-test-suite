#include <stdlib.h>
unsigned int v1 (unsigned short, signed int, unsigned int);
unsigned int (*v2) (unsigned short, signed int, unsigned int) = v1;
extern void v3 (unsigned short, unsigned char, signed short, unsigned int);
extern void (*v4) (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
extern signed short v7 (unsigned short, signed int, signed int, unsigned char);
extern signed short (*v8) (unsigned short, signed int, signed int, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned int, signed short);
extern signed short (*v16) (unsigned int, signed short);
extern void v17 (signed char);
extern void (*v18) (signed char);
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
static signed char v21 (unsigned int, signed char);
static signed char (*v22) (unsigned int, signed char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
unsigned int v25 (signed char, unsigned char, unsigned short, unsigned char);
unsigned int (*v26) (signed char, unsigned char, unsigned short, unsigned char) = v25;
extern signed short v27 (unsigned int, signed char, unsigned short);
extern signed short (*v28) (unsigned int, signed char, unsigned short);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 7;
unsigned char v70 = 1;
signed short v69 = 2;

unsigned int v25 (signed char v72, unsigned char v73, unsigned short v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 0;
signed char v77 = 1;
signed char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (unsigned int v79, signed char v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 7;
unsigned int v82 = 3U;
signed int v81 = -4;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v84, signed int v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -3;
signed short v88 = 1;
unsigned short v87 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v90;
v90 = v23 ();
history[history_index++] = (int)v90;
}
break;
case 2: 
{
unsigned short v91;
unsigned char v92;
signed short v93;
unsigned int v94;
v91 = v87 - 7;
v92 = 3 - 2;
v93 = -2 - v88;
v94 = v86 + v86;
v3 (v91, v92, v93, v94);
}
break;
case 4: 
{
unsigned short v95;
unsigned char v96;
signed short v97;
unsigned int v98;
v95 = 6 + 7;
v96 = 3 - 2;
v97 = -2 - -3;
v98 = v86 + 6U;
v3 (v95, v96, v97, v98);
}
break;
case 6: 
{
signed short v99;
unsigned short v100;
v99 = v88 - -1;
v100 = v29 (v99);
history[history_index++] = (int)v100;
}
break;
case 8: 
{
signed short v101;
unsigned char v102;
unsigned char v103;
signed int v104;
v101 = v88 - v88;
v102 = 0 - 3;
v103 = 7 - 4;
v104 = -1 + v85;
v19 (v101, v102, v103, v104);
}
break;
case 10: 
{
unsigned int v105;
signed char v106;
signed char v107;
v105 = v86 - v86;
v106 = 0 - 1;
v107 = v21 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 12: 
return v86;
default: abort ();
}
}
}
}
