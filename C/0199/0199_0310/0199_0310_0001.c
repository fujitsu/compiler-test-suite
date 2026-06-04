#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned int, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned int, signed int);
extern unsigned int v3 (unsigned int, signed int, signed int, unsigned char);
extern unsigned int (*v4) (unsigned int, signed int, signed int, unsigned char);
signed int v5 (signed short, signed char, signed int, unsigned int);
signed int (*v6) (signed short, signed char, signed int, unsigned int) = v5;
extern unsigned char v7 (unsigned char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed short, signed short);
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned char);
signed short v11 (signed char, signed short, signed char);
signed short (*v12) (signed char, signed short, signed char) = v11;
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
signed int v15 (signed int, unsigned short, signed int, signed short);
signed int (*v16) (signed int, unsigned short, signed int, signed short) = v15;
unsigned int v17 (unsigned char, unsigned int, signed short, signed int);
unsigned int (*v18) (unsigned char, unsigned int, signed short, signed int) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned short v23 (signed int, signed short, unsigned short, signed short);
extern unsigned short (*v24) (signed int, signed short, unsigned short, signed short);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 2U;
unsigned int v74 = 2U;
unsigned short v73 = 5;

signed short v19 (void)
{
{
for (;;) {
signed int v78 = -1;
signed char v77 = -3;
signed char v76 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v79, unsigned int v80, signed short v81, signed int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 1U;
unsigned char v84 = 2;
unsigned char v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v86, unsigned short v87, signed int v88, signed short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 2U;
signed char v91 = 3;
signed short v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v93, signed short v94, signed char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 0;
signed char v97 = -1;
signed int v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v99, signed char v100, signed int v101, unsigned int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 4;
unsigned int v104 = 1U;
unsigned char v103 = 4;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v106;
unsigned char v107;
unsigned int v108;
signed int v109;
v106 = 2 - 3;
v107 = v105 - v105;
v108 = v102 - v102;
v109 = 0 + -4;
v1 (v106, v107, v108, v109);
}
break;
case 14: 
return v101;
default: abort ();
}
}
}
}
