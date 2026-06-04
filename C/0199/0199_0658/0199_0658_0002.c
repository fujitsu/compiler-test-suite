#include <stdlib.h>
unsigned int v1 (unsigned int, signed int);
unsigned int (*v2) (unsigned int, signed int) = v1;
extern unsigned short v3 (signed short, signed int, unsigned short, signed short);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed short);
extern unsigned short v5 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short (*v6) (unsigned short, unsigned char, unsigned int, signed char);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
signed int v9 (signed char);
signed int (*v10) (signed char) = v9;
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
static unsigned char v13 (unsigned int, signed int, unsigned short);
static unsigned char (*v14) (unsigned int, signed int, unsigned short) = v13;
signed int v15 (signed char, signed int, unsigned char);
signed int (*v16) (signed char, signed int, unsigned char) = v15;
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
extern signed int v21 (signed int, signed short, unsigned short, signed int);
extern signed int (*v22) (signed int, signed short, unsigned short, signed int);
unsigned char v23 (unsigned int, signed int, unsigned int);
unsigned char (*v24) (unsigned int, signed int, unsigned int) = v23;
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 7;
unsigned int v70 = 0U;
unsigned short v69 = 5;

unsigned char v23 (unsigned int v72, signed int v73, unsigned int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -4;
signed short v76 = 0;
unsigned char v75 = 1;
trace++;
switch (trace)
{
case 3: 
return v75;
default: abort ();
}
}
}
}

signed int v15 (signed char v78, signed int v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -4;
unsigned short v82 = 2;
unsigned short v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v13 (unsigned int v84, signed int v85, unsigned short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 0;
unsigned char v88 = 3;
signed int v87 = 3;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v90;
signed char v91;
unsigned short v92;
v90 = v86 + 3;
v91 = -3 - v89;
v92 = v29 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return v88;
default: abort ();
}
}
}
}

signed int v9 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -2;
unsigned char v95 = 7;
signed short v94 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -1;
unsigned short v100 = 6;
unsigned short v99 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v102;
signed short v103;
v102 = 0 - v101;
v103 = v17 (v102);
history[history_index++] = (int)v103;
}
break;
case 8: 
{
unsigned int v104;
signed int v105;
unsigned short v106;
unsigned char v107;
v104 = v97 + 6U;
v105 = 0 + -3;
v106 = 0 + 6;
v107 = v13 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 12: 
return v97;
default: abort ();
}
}
}
}
