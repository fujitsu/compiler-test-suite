#include <stdlib.h>
extern signed short v1 (signed char, unsigned int, unsigned short);
extern signed short (*v2) (signed char, unsigned int, unsigned short);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
unsigned char v5 (signed char, signed short);
unsigned char (*v6) (signed char, signed short) = v5;
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
unsigned short v11 (unsigned short, unsigned short, unsigned int);
unsigned short (*v12) (unsigned short, unsigned short, unsigned int) = v11;
unsigned char v13 (unsigned int, unsigned char, signed int);
unsigned char (*v14) (unsigned int, unsigned char, signed int) = v13;
signed int v15 (signed short, signed short, unsigned char, signed char);
signed int (*v16) (signed short, signed short, unsigned char, signed char) = v15;
signed short v17 (signed short, unsigned char, signed char);
signed short (*v18) (signed short, unsigned char, signed char) = v17;
unsigned char v19 (unsigned char, unsigned char, signed short);
unsigned char (*v20) (unsigned char, unsigned char, signed short) = v19;
extern unsigned int v21 (unsigned int);
extern unsigned int (*v22) (unsigned int);
extern void v23 (unsigned int, signed int, signed short, signed short);
extern void (*v24) (unsigned int, signed int, signed short, signed short);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
void v27 (void);
void (*v28) (void) = v27;
signed char v29 (unsigned int);
signed char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 6;
unsigned int v71 = 7U;
signed short v70 = 2;

signed char v29 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 1;
signed char v75 = -1;
signed char v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
signed char v79 = 2;
signed char v78 = 2;
unsigned char v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v80, unsigned char v81, signed short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
unsigned short v84 = 0;
unsigned char v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v86, unsigned char v87, signed char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 2;
signed int v90 = 0;
unsigned short v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v92, signed short v93, unsigned char v94, signed char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -2;
unsigned char v97 = 6;
unsigned char v96 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v99, unsigned char v100, signed int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -2;
signed char v103 = -2;
signed int v102 = -3;
trace++;
switch (trace)
{
case 3: 
return v100;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v105, unsigned short v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 0;
unsigned short v109 = 2;
unsigned short v108 = 7;
trace++;
switch (trace)
{
case 1: 
return v106;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed int v113 = -4;
signed int v112 = -1;
signed int v111 = 2;
trace++;
switch (trace)
{
case 9: 
return 7;
default: abort ();
}
}
}
}

unsigned char v5 (signed char v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 0;
unsigned char v117 = 5;
unsigned char v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 1;
signed int v121 = 3;
signed short v120 = 1;
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
