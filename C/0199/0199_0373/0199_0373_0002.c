#include <stdlib.h>
void v1 (signed char, unsigned short, unsigned int);
void (*v2) (signed char, unsigned short, unsigned int) = v1;
extern unsigned short v3 (signed short, unsigned char, signed char);
extern unsigned short (*v4) (signed short, unsigned char, signed char);
extern void v5 (unsigned short, unsigned short, unsigned char, signed char);
extern void (*v6) (unsigned short, unsigned short, unsigned char, signed char);
static unsigned int v7 (signed int, unsigned int, unsigned int);
static unsigned int (*v8) (signed int, unsigned int, unsigned int) = v7;
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
unsigned char v15 (unsigned short, signed char, signed char, unsigned char);
unsigned char (*v16) (unsigned short, signed char, signed char, unsigned char) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
unsigned char v19 (unsigned int, unsigned char);
unsigned char (*v20) (unsigned int, unsigned char) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
extern void v25 (unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 6;
unsigned short v56 = 4;
signed char v55 = -1;

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v60 = 2;
unsigned short v59 = 7;
signed int v58 = 3;
trace++;
switch (trace)
{
case 4: 
return 3U;
case 6: 
return 6U;
case 10: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v61, unsigned char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 5;
unsigned char v64 = 5;
unsigned int v63 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed int v68 = 0;
signed int v67 = 0;
signed char v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v69, signed char v70, signed char v71, unsigned char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 4;
unsigned int v74 = 0U;
signed short v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed short v78 = 3;
signed short v77 = 1;
signed int v76 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (signed int v79, unsigned int v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -4;
signed short v83 = 0;
signed char v82 = -4;
trace++;
switch (trace)
{
case 1: 
return v80;
default: abort ();
}
}
}
}

void v1 (signed char v85, unsigned short v86, unsigned int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 3;
unsigned int v89 = 3U;
signed int v88 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v91;
unsigned int v92;
unsigned int v93;
unsigned int v94;
v91 = v88 - v88;
v92 = v89 - 5U;
v93 = 0U + 1U;
v94 = v7 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 2: 
{
unsigned short v95;
unsigned short v96;
v95 = v86 + 0;
v96 = v21 (v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
