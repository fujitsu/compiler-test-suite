#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v2) (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
signed short v5 (signed int, unsigned char);
signed short (*v6) (signed int, unsigned char) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned short v11 (signed int, unsigned short, unsigned int);
unsigned short (*v12) (signed int, unsigned short, unsigned int) = v11;
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (unsigned short, unsigned int, signed char);
signed short (*v18) (unsigned short, unsigned int, signed char) = v17;
extern signed char v19 (unsigned int, unsigned int, signed char);
extern signed char (*v20) (unsigned int, unsigned int, signed char);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned int v23 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int, unsigned char);
signed short v25 (unsigned int);
signed short (*v26) (unsigned int) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = -2;
unsigned int v69 = 3U;
signed char v68 = -1;

signed short v25 (unsigned int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 0;
signed int v73 = 2;
unsigned int v72 = 4U;
trace++;
switch (trace)
{
case 4: 
return -4;
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v77 = 4U;
signed char v76 = 3;
unsigned int v75 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v78, unsigned int v79, signed char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -2;
unsigned short v82 = 6;
unsigned int v81 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v84, unsigned short v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 0;
unsigned char v88 = 1;
signed int v87 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v90;
unsigned char v91;
unsigned int v92;
unsigned char v93;
unsigned int v94;
v90 = -2 + -1;
v91 = v89 + v89;
v92 = v86 - 1U;
v93 = 6 + 2;
v94 = v23 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 9: 
{
unsigned int v95;
unsigned char v96;
v95 = v86 + 5U;
v96 = 2 - v88;
v29 (v95, v96);
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed short v99 = 0;
signed char v98 = 0;
unsigned short v97 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v100, unsigned char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -1;
unsigned char v103 = 0;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
