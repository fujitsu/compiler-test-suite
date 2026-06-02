#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned short);
extern unsigned char (*v2) (signed int, signed short, unsigned short);
signed int v3 (unsigned short, unsigned char, signed char);
signed int (*v4) (unsigned short, unsigned char, signed char) = v3;
unsigned short v5 (unsigned int, unsigned short);
unsigned short (*v6) (unsigned int, unsigned short) = v5;
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern signed short v11 (unsigned short, signed char, signed short);
extern signed short (*v12) (unsigned short, signed char, signed short);
void v13 (signed short, unsigned short, signed char, unsigned int);
void (*v14) (signed short, unsigned short, signed char, unsigned int) = v13;
signed char v15 (unsigned int, unsigned short, signed char, unsigned int);
signed char (*v16) (unsigned int, unsigned short, signed char, unsigned int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (unsigned short, signed char, signed char);
extern void (*v22) (unsigned short, signed char, signed char);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = 1;
signed short v76 = 1;
unsigned short v75 = 0;

signed int v19 (void)
{
{
for (;;) {
unsigned char v80 = 1;
unsigned char v79 = 6;
unsigned short v78 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned int v81, unsigned short v82, signed char v83, unsigned int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
signed short v86 = -1;
signed char v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v88, unsigned short v89, signed char v90, unsigned int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -1;
unsigned short v93 = 1;
unsigned short v92 = 2;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v95, unsigned short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 3;
unsigned short v98 = 5;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v100, unsigned char v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 1;
signed short v104 = -1;
unsigned char v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
