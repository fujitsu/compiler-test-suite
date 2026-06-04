#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed int v3 (unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned short);
unsigned short v5 (unsigned short, unsigned int, signed char, signed short);
unsigned short (*v6) (unsigned short, unsigned int, signed char, signed short) = v5;
signed char v7 (signed int, unsigned short, unsigned short);
signed char (*v8) (signed int, unsigned short, unsigned short) = v7;
extern signed short v9 (signed short, signed short);
extern signed short (*v10) (signed short, signed short);
signed short v11 (unsigned char, signed char, unsigned short);
signed short (*v12) (unsigned char, signed char, unsigned short) = v11;
extern void v13 (signed short, unsigned char, signed int, unsigned short);
extern void (*v14) (signed short, unsigned char, signed int, unsigned short);
unsigned char v15 (signed int, signed short, unsigned char, unsigned short);
unsigned char (*v16) (signed int, signed short, unsigned char, unsigned short) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, signed int, unsigned int);
unsigned char v25 (signed short, unsigned int, unsigned short);
unsigned char (*v26) (signed short, unsigned int, unsigned short) = v25;
extern unsigned short v27 (unsigned short, signed char, signed short);
extern unsigned short (*v28) (unsigned short, signed char, signed short);
extern unsigned short v29 (signed int, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 7U;
signed char v74 = 3;
signed int v73 = 3;

unsigned char v25 (signed short v76, unsigned int v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 6;
signed char v80 = 0;
unsigned int v79 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v82, signed short v83, unsigned char v84, unsigned short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -2;
signed short v87 = -3;
signed char v86 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v89, signed char v90, unsigned short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 5;
signed int v93 = 0;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v95, unsigned short v96, unsigned short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 0;
unsigned char v99 = 0;
unsigned int v98 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v101, unsigned int v102, signed char v103, signed short v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -2;
unsigned char v106 = 3;
signed short v105 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v110 = 2U;
signed short v109 = 0;
unsigned char v108 = 7;
trace++;
switch (trace)
{
case 0: 
return 7;
case 1: 
{
unsigned int v111;
v111 = v17 ();
history[history_index++] = (int)v111;
}
break;
case 5: 
{
unsigned int v112;
unsigned short v113;
signed int v114;
v112 = v110 + 6U;
v113 = 4 + 1;
v114 = v3 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}
