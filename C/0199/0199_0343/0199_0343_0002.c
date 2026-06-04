#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern signed char v3 (signed int, signed int, signed int, signed short);
extern signed char (*v4) (signed int, signed int, signed int, signed short);
extern void v5 (signed short, signed int);
extern void (*v6) (signed short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned int v11 (unsigned short, signed int, unsigned char);
unsigned int (*v12) (unsigned short, signed int, unsigned char) = v11;
static signed char v13 (unsigned int, signed short, unsigned int);
static signed char (*v14) (unsigned int, signed short, unsigned int) = v13;
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
signed char v17 (signed char, signed int, signed char, signed int);
signed char (*v18) (signed char, signed int, signed char, signed int) = v17;
unsigned int v19 (unsigned int, unsigned int, signed int, signed char);
unsigned int (*v20) (unsigned int, unsigned int, signed int, signed char) = v19;
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned char, signed short, signed short);
extern signed int (*v26) (unsigned char, signed short, signed short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v63 = 2;
unsigned char v62 = 4;
unsigned short v61 = 6;

unsigned int v19 (unsigned int v64, unsigned int v65, signed int v66, signed char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = 2;
signed char v69 = 2;
signed int v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v71, signed int v72, signed char v73, signed int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 7;
signed char v76 = 1;
signed int v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v13 (unsigned int v78, signed short v79, unsigned int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 0;
unsigned short v82 = 7;
unsigned int v81 = 7U;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v84;
signed short v85;
unsigned int v86;
signed char v87;
v84 = v80 - v78;
v85 = v79 - 1;
v86 = v80 - v80;
v87 = v13 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 8: 
return -2;
case 9: 
{
unsigned int v88;
signed short v89;
unsigned int v90;
signed char v91;
v88 = v78 + v81;
v89 = -3 + -3;
v90 = 6U - 3U;
v91 = v13 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 10: 
{
unsigned char v92;
v92 = v23 ();
history[history_index++] = (int)v92;
}
break;
case 12: 
return -2;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v93, signed int v94, unsigned char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 4;
signed char v97 = 1;
unsigned short v96 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v99;
signed short v100;
unsigned int v101;
signed char v102;
v99 = 2U + 2U;
v100 = 0 - 3;
v101 = 4U - 4U;
v102 = v13 (v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return 0U;
default: abort ();
}
}
}
}
