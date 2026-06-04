#include <stdlib.h>
unsigned int v1 (unsigned char, signed int, signed short, signed int);
unsigned int (*v2) (unsigned char, signed int, signed short, signed int) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern void v5 (unsigned short, unsigned short, unsigned char);
extern void (*v6) (unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
unsigned int v9 (signed char, unsigned short);
unsigned int (*v10) (signed char, unsigned short) = v9;
extern signed int v11 (unsigned short, signed short, unsigned char);
extern signed int (*v12) (unsigned short, signed short, unsigned char);
extern unsigned char v13 (signed short, signed char);
extern unsigned char (*v14) (signed short, signed char);
extern unsigned int v17 (unsigned int, unsigned char, signed int);
extern unsigned int (*v18) (unsigned int, unsigned char, signed int);
void v19 (void);
void (*v20) (void) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
static unsigned int v25 (unsigned int, unsigned char, unsigned char);
static unsigned int (*v26) (unsigned int, unsigned char, unsigned char) = v25;
extern void v27 (signed short, unsigned char, signed int);
extern void (*v28) (signed short, unsigned char, signed int);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 1U;
signed int v80 = 0;
unsigned short v79 = 3;

static unsigned int v25 (unsigned int v82, unsigned char v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 0;
unsigned int v86 = 2U;
signed int v85 = 2;
trace++;
switch (trace)
{
case 1: 
return v82;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed int v90 = 2;
unsigned int v89 = 5U;
unsigned short v88 = 6;
trace++;
switch (trace)
{
case 8: 
return -2;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
signed char v93 = 0;
signed char v92 = 0;
signed char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v94, unsigned short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 3;
unsigned int v97 = 4U;
unsigned short v96 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v99, signed int v100, signed short v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 0;
unsigned int v104 = 5U;
signed short v103 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v106;
unsigned char v107;
unsigned char v108;
unsigned int v109;
v106 = 3U - v104;
v107 = 1 - 2;
v108 = v99 - v99;
v109 = v25 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 2: 
{
signed int v110;
unsigned char v111;
v110 = v100 - v100;
v111 = v3 (v110);
history[history_index++] = (int)v111;
}
break;
case 10: 
{
unsigned int v112;
unsigned char v113;
signed int v114;
unsigned int v115;
v112 = v104 + 4U;
v113 = 7 + v99;
v114 = v102 + 2;
v115 = v17 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}
