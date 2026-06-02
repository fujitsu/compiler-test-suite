#include <stdlib.h>
signed short v1 (unsigned int, unsigned char, signed short);
signed short (*v2) (unsigned int, unsigned char, signed short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned char, unsigned short, signed int, signed int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
unsigned char v9 (signed short, unsigned int, signed int);
unsigned char (*v10) (signed short, unsigned int, signed int) = v9;
extern unsigned short v11 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short, unsigned int, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char);
unsigned short v19 (signed char, unsigned short, signed int, unsigned int);
unsigned short (*v20) (signed char, unsigned short, signed int, unsigned int) = v19;
extern signed short v21 (signed short, signed short, unsigned char);
extern signed short (*v22) (signed short, signed short, unsigned char);
signed int v23 (unsigned char, unsigned short, signed char);
signed int (*v24) (unsigned char, unsigned short, signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short, signed short);
extern signed short (*v28) (unsigned short, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 2;
unsigned short v79 = 5;
unsigned short v78 = 6;

signed int v23 (unsigned char v81, unsigned short v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 3U;
signed char v85 = 2;
signed char v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v87, unsigned short v88, signed int v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
unsigned char v92 = 5;
unsigned char v91 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v94, unsigned int v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 5;
signed int v98 = 3;
unsigned short v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed int v102 = 2;
signed short v101 = -4;
unsigned short v100 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned int v103, unsigned char v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 2;
unsigned char v107 = 4;
unsigned int v106 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed short v109;
signed short v110;
unsigned char v111;
signed short v112;
v109 = 1 - v105;
v110 = v105 - 3;
v111 = v107 + 4;
v112 = v21 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 2: 
{
unsigned short v113;
signed short v114;
signed short v115;
v113 = 7 - 0;
v114 = v105 + -2;
v115 = v27 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 4: 
{
unsigned char v116;
v116 = v13 ();
history[history_index++] = (int)v116;
}
break;
case 12: 
return v105;
default: abort ();
}
}
}
}
