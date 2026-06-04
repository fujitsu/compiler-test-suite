#include <stdlib.h>
extern signed int v1 (unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed short);
void v3 (signed short);
void (*v4) (signed short) = v3;
extern signed char v5 (unsigned int, unsigned short);
extern signed char (*v6) (unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed int, signed int, unsigned int);
extern unsigned int (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (signed char, signed short, signed char);
extern unsigned int (*v12) (signed char, signed short, signed char);
signed short v13 (void);
signed short (*v14) (void) = v13;
static signed short v15 (signed char, signed short, signed char, signed char);
static signed short (*v16) (signed char, signed short, signed char, signed char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned int v19 (signed char, signed int, unsigned char, unsigned char);
unsigned int (*v20) (signed char, signed int, unsigned char, unsigned char) = v19;
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern void v27 (signed short);
extern void (*v28) (signed short);
unsigned int v29 (signed short, signed short);
unsigned int (*v30) (signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 7;
signed char v81 = -1;
signed int v80 = 3;

unsigned int v29 (signed short v83, signed short v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 1;
signed int v86 = -3;
unsigned char v85 = 0;
trace++;
switch (trace)
{
case 8: 
return 2U;
case 10: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v88, signed int v89, unsigned char v90, unsigned char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -4;
signed char v93 = -3;
unsigned char v92 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed char v95;
signed short v96;
signed char v97;
signed char v98;
signed short v99;
v95 = v93 + v88;
v96 = 1 + -4;
v97 = v88 - v93;
v98 = 1 - v93;
v99 = v15 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}

static signed short v15 (signed char v100, signed short v101, signed char v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 5U;
unsigned short v105 = 6;
signed short v104 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed short v107;
unsigned char v108;
unsigned char v109;
v107 = v104 + 1;
v108 = 6 + 4;
v109 = v25 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return v104;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v112 = 3;
unsigned int v111 = 3U;
unsigned char v110 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
signed char v115 = -1;
unsigned char v114 = 4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
