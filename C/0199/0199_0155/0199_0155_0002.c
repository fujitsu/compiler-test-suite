#include <stdlib.h>
unsigned char v1 (signed short, signed char);
unsigned char (*v2) (signed short, signed char) = v1;
extern signed short v3 (signed char, signed int, unsigned char, signed char);
extern signed short (*v4) (signed char, signed int, unsigned char, signed char);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern unsigned short v7 (signed char, signed int, signed char, signed int);
extern unsigned short (*v8) (signed char, signed int, signed char, signed int);
signed char v9 (unsigned short, unsigned char, signed int);
signed char (*v10) (unsigned short, unsigned char, signed int) = v9;
signed int v11 (unsigned short, signed int, unsigned char);
signed int (*v12) (unsigned short, signed int, unsigned char) = v11;
void v13 (signed int, signed int, unsigned int);
void (*v14) (signed int, signed int, unsigned int) = v13;
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed short v17 (signed int, signed int, signed char, unsigned short);
extern signed short (*v18) (signed int, signed int, signed char, unsigned short);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (signed int, unsigned short, unsigned short, signed char);
extern unsigned char (*v24) (signed int, unsigned short, unsigned short, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
signed short v29 (signed char, unsigned char, signed short, signed short);
signed short (*v30) (signed char, unsigned char, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = 3;
unsigned char v69 = 6;
unsigned int v68 = 3U;

signed short v29 (signed char v71, unsigned char v72, signed short v73, signed short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -1;
signed short v76 = -2;
signed short v75 = 2;
trace++;
switch (trace)
{
case 1: 
return 2;
case 10: 
return v73;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed int v80 = 0;
unsigned int v79 = 1U;
unsigned char v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v81, signed int v82, unsigned int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -3;
signed short v85 = 2;
unsigned short v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v87, signed int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 3;
unsigned char v91 = 5;
signed char v90 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v93, unsigned char v94, signed int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 2;
unsigned int v97 = 2U;
unsigned char v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v99, signed char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -3;
unsigned short v102 = 7;
signed char v101 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v104;
unsigned char v105;
signed short v106;
signed short v107;
signed short v108;
v104 = v100 - v101;
v105 = 6 + 7;
v106 = v99 - 0;
v107 = -4 + -4;
v108 = v29 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 2: 
{
signed char v109;
signed int v110;
signed char v111;
signed int v112;
unsigned short v113;
v109 = -4 - -1;
v110 = 2 + 2;
v111 = v101 + v103;
v112 = -3 - -2;
v113 = v7 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
