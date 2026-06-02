#include <stdlib.h>
unsigned int v3 (signed int, unsigned int, signed int, signed char);
unsigned int (*v4) (signed int, unsigned int, signed int, signed char) = v3;
unsigned char v5 (unsigned short, unsigned short, signed int);
unsigned char (*v6) (unsigned short, unsigned short, signed int) = v5;
extern signed int v7 (unsigned char, unsigned char, signed char, unsigned char);
extern signed int (*v8) (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int, unsigned int);
signed short v13 (unsigned int, signed char, unsigned int, unsigned short);
signed short (*v14) (unsigned int, signed char, unsigned int, unsigned short) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (unsigned char, signed char, signed char, signed short);
extern unsigned int (*v18) (unsigned char, signed char, signed char, signed short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
unsigned short v21 (unsigned char, unsigned int, unsigned int, signed char);
unsigned short (*v22) (unsigned char, unsigned int, unsigned int, signed char) = v21;
extern unsigned int v23 (signed short, unsigned char, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int);
extern unsigned short v25 (unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned char);
extern unsigned short v27 (signed int, signed char);
extern unsigned short (*v28) (signed int, signed char);
unsigned short v29 (signed short);
unsigned short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 4;
signed int v75 = -4;
unsigned short v74 = 2;

unsigned short v29 (signed short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 0;
unsigned short v79 = 0;
unsigned short v78 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v81, unsigned int v82, unsigned int v83, signed char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
unsigned int v86 = 5U;
signed char v85 = -1;
trace++;
switch (trace)
{
case 1: 
return 6;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed short v13 (unsigned int v88, signed char v89, unsigned int v90, unsigned short v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 3;
unsigned int v93 = 4U;
signed int v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v95, unsigned short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 2;
signed short v99 = -1;
signed char v98 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v101, unsigned int v102, signed int v103, signed char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = -2;
unsigned char v106 = 3;
unsigned char v105 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v108;
unsigned char v109;
unsigned short v110;
v108 = 4U - v102;
v109 = v106 - v105;
v110 = v25 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 5: 
return 2U;
default: abort ();
}
}
}
}
