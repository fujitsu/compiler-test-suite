#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (unsigned int, signed char, unsigned char, unsigned char);
signed int (*v4) (unsigned int, signed char, unsigned char, unsigned char) = v3;
extern unsigned short v5 (signed short, signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned short, unsigned char);
extern unsigned short v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int, signed int, unsigned int);
unsigned int v9 (signed char, unsigned char, unsigned char);
unsigned int (*v10) (signed char, unsigned char, unsigned char) = v9;
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
signed short v15 (unsigned char, unsigned char, unsigned int, unsigned int);
signed short (*v16) (unsigned char, unsigned char, unsigned int, unsigned int) = v15;
signed int v17 (unsigned int);
signed int (*v18) (unsigned int) = v17;
extern unsigned char v19 (unsigned char, signed short, unsigned char);
extern unsigned char (*v20) (unsigned char, signed short, unsigned char);
extern unsigned short v21 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, signed char, unsigned short, signed char);
extern unsigned int v23 (unsigned short, unsigned char, signed short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned char, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
signed char v29 (unsigned char, signed int, unsigned short, signed short);
signed char (*v30) (unsigned char, signed int, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 7;
unsigned int v57 = 5U;
signed int v56 = -4;

signed char v29 (unsigned char v59, signed int v60, unsigned short v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
unsigned char v64 = 5;
signed short v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 4U;
signed short v68 = 3;
unsigned char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v70, unsigned char v71, unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 2;
signed char v75 = -2;
signed short v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 3;
signed short v79 = -1;
signed short v78 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v81, unsigned char v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 2;
signed short v85 = 3;
unsigned char v84 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v87, signed char v88, unsigned char v89, unsigned char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 1U;
unsigned int v92 = 4U;
signed int v91 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v94;
signed short v95;
unsigned char v96;
unsigned char v97;
v94 = v90 + 3;
v95 = 2 - -4;
v96 = 0 + 5;
v97 = v19 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
{
signed short v98;
signed char v99;
unsigned short v100;
unsigned char v101;
unsigned short v102;
v98 = -2 + 1;
v99 = v88 - v88;
v100 = 7 + 2;
v101 = 7 - v89;
v102 = v5 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 10: 
{
unsigned char v103;
signed short v104;
unsigned char v105;
unsigned char v106;
v103 = v90 + v90;
v104 = -3 + -1;
v105 = v90 + v89;
v106 = v19 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v91;
default: abort ();
}
}
}
}
