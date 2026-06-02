#include <stdlib.h>
extern void v1 (signed int, signed char, signed char, unsigned char);
extern void (*v2) (signed int, signed char, signed char, unsigned char);
extern void v3 (signed int, unsigned int, unsigned short);
extern void (*v4) (signed int, unsigned int, unsigned short);
unsigned short v5 (signed char, unsigned char);
unsigned short (*v6) (signed char, unsigned char) = v5;
unsigned int v7 (signed short, signed char, unsigned short, signed char);
unsigned int (*v8) (signed short, signed char, unsigned short, signed char) = v7;
extern unsigned char v9 (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short, unsigned int);
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
extern unsigned short v13 (signed char, signed short, signed char, unsigned char);
extern unsigned short (*v14) (signed char, signed short, signed char, unsigned char);
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
unsigned char v19 (signed int);
unsigned char (*v20) (signed int) = v19;
unsigned char v21 (unsigned short, signed short);
unsigned char (*v22) (unsigned short, signed short) = v21;
extern signed int v23 (signed int, unsigned char, unsigned char);
extern signed int (*v24) (signed int, unsigned char, unsigned char);
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned short, signed int, signed char);
extern unsigned char (*v28) (unsigned short, signed int, signed char);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 7;
signed short v74 = -3;
signed short v73 = -2;

unsigned char v21 (unsigned short v76, signed short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -1;
signed int v79 = 2;
signed short v78 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v81;
signed int v82;
signed char v83;
unsigned char v84;
v81 = 2 - v76;
v82 = 3 + v79;
v83 = 1 + 2;
v84 = v27 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 7: 
{
unsigned short v85;
signed int v86;
signed char v87;
unsigned char v88;
v85 = 5 - 2;
v86 = v79 - v79;
v87 = 2 + -2;
v88 = v27 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 9: 
{
unsigned short v89;
signed int v90;
signed char v91;
unsigned char v92;
v89 = v76 - v76;
v90 = v79 + -1;
v91 = -4 + 3;
v92 = v27 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned char v19 (signed int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 5U;
unsigned char v95 = 7;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -3;
signed short v99 = 0;
unsigned char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v101, signed char v102, unsigned short v103, signed char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 3;
signed char v106 = 3;
signed int v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v108, unsigned char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 1;
unsigned short v111 = 3;
unsigned char v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
