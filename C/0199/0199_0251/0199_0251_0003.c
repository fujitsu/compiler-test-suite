#include <stdlib.h>
void v1 (unsigned int, unsigned char, unsigned short, signed char);
void (*v2) (unsigned int, unsigned char, unsigned short, signed char) = v1;
void v3 (unsigned char, unsigned char, signed char, unsigned int);
void (*v4) (unsigned char, unsigned char, signed char, unsigned int) = v3;
unsigned char v5 (unsigned short);
unsigned char (*v6) (unsigned short) = v5;
extern void v7 (signed int, signed char, unsigned char);
extern void (*v8) (signed int, signed char, unsigned char);
signed char v9 (signed char, unsigned short);
signed char (*v10) (signed char, unsigned short) = v9;
extern unsigned short v11 (unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned char v21 (signed char, signed char, signed short);
extern unsigned char (*v22) (signed char, signed char, signed short);
extern unsigned char v23 (unsigned char, unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v27 (signed int, unsigned int, signed int);
extern signed char (*v28) (signed int, unsigned int, signed int);
signed char v29 (unsigned char, unsigned char);
signed char (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = -4;
signed int v86 = -3;
unsigned int v85 = 4U;

signed char v29 (unsigned char v88, unsigned char v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 3;
signed short v91 = -1;
signed short v90 = 0;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned int v95 = 1U;
unsigned char v94 = 5;
unsigned short v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 5;
signed int v99 = 0;
signed char v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 7;
unsigned char v103 = 3;
signed char v102 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v105, unsigned char v106, signed char v107, unsigned int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 3;
signed short v110 = 3;
unsigned short v109 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v112, unsigned char v113, unsigned short v114, signed char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 0;
unsigned short v117 = 5;
signed short v116 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
v119 = v117 + 5;
v15 (v119);
}
break;
case 18: 
return;
default: abort ();
}
}
}
}
