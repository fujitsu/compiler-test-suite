#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned int);
unsigned char (*v2) (unsigned char, unsigned int) = v1;
unsigned char v3 (unsigned int, signed short, unsigned char);
unsigned char (*v4) (unsigned int, signed short, unsigned char) = v3;
void v5 (void);
void (*v6) (void) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed int v9 (signed short, unsigned char, signed char);
extern signed int (*v10) (signed short, unsigned char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
static signed int v15 (unsigned short, unsigned short);
static signed int (*v16) (unsigned short, unsigned short) = v15;
extern signed short v17 (unsigned int, unsigned int);
extern signed short (*v18) (unsigned int, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed int, unsigned int, unsigned char);
unsigned char v23 (signed int, signed int, signed short);
unsigned char (*v24) (signed int, signed int, signed short) = v23;
signed int v25 (unsigned int, signed char);
signed int (*v26) (unsigned int, signed char) = v25;
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 3;
signed int v45 = -3;
unsigned char v44 = 2;

signed int v25 (unsigned int v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = -4;
unsigned char v50 = 6;
signed short v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v52, signed int v53, signed short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -4;
unsigned int v56 = 6U;
signed char v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (unsigned short v58, unsigned short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 5;
signed int v61 = 1;
signed char v60 = 2;
trace++;
switch (trace)
{
case 1: 
return v61;
case 3: 
{
unsigned char v63;
signed char v64;
v63 = 6 - 3;
v64 = v19 (v63);
history[history_index++] = (int)v64;
}
break;
case 13: 
return v61;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed short v67 = -3;
signed int v66 = -4;
signed int v65 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v70 = 0;
signed short v69 = -2;
signed int v68 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed int v73 = -3;
signed char v72 = -1;
unsigned char v71 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v74, signed short v75, unsigned char v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 7;
signed int v78 = -3;
signed short v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v80, unsigned int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 2;
unsigned char v83 = 4;
signed char v82 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v85;
unsigned short v86;
signed int v87;
v85 = 1 + 6;
v86 = 7 - 0;
v87 = v15 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 2: 
{
unsigned short v88;
unsigned short v89;
signed int v90;
v88 = 2 - 3;
v89 = 6 + 0;
v90 = v15 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
