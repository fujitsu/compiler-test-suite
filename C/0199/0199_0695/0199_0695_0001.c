#include <stdlib.h>
signed int v1 (unsigned char, unsigned short, signed int);
signed int (*v2) (unsigned char, unsigned short, signed int) = v1;
unsigned short v3 (unsigned int, signed short, signed char);
unsigned short (*v4) (unsigned int, signed short, signed char) = v3;
extern unsigned short v5 (signed int, signed int, signed short);
extern unsigned short (*v6) (signed int, signed int, signed short);
signed short v7 (signed char, unsigned char, unsigned short);
signed short (*v8) (signed char, unsigned char, unsigned short) = v7;
extern unsigned char v9 (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v11 (signed short, unsigned short, signed char, unsigned int);
extern signed short (*v12) (signed short, unsigned short, signed char, unsigned int);
void v13 (signed int);
void (*v14) (signed int) = v13;
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
signed int v17 (signed char, unsigned int, unsigned int);
signed int (*v18) (signed char, unsigned int, unsigned int) = v17;
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern unsigned short v21 (signed short, unsigned char, unsigned char, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned short, signed int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned short, signed int);
signed short v27 (void);
signed short (*v28) (void) = v27;
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = 3;
signed char v65 = -3;
unsigned char v64 = 3;

signed int v29 (void)
{
{
for (;;) {
signed int v69 = -1;
unsigned short v68 = 0;
unsigned short v67 = 7;
trace++;
switch (trace)
{
case 9: 
return v69;
default: abort ();
}
}
}
}

signed short v27 (void)
{
{
for (;;) {
signed int v72 = 3;
unsigned char v71 = 0;
signed int v70 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v73, unsigned int v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 1;
signed char v77 = -1;
unsigned short v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 1;
signed int v81 = -1;
signed char v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed char v83, unsigned char v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 0;
unsigned char v87 = 2;
unsigned int v86 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v89, signed short v90, signed char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 0U;
unsigned short v93 = 4;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v95, unsigned short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -2;
unsigned int v99 = 2U;
signed short v98 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v101;
signed int v102;
v101 = v99 + 2U;
v102 = v19 (v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return v97;
default: abort ();
}
}
}
}
