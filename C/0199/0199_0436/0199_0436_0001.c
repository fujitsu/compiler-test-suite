#include <stdlib.h>
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
static unsigned short v7 (signed char);
static unsigned short (*v8) (signed char) = v7;
extern signed short v9 (unsigned int, unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned short);
extern signed short v11 (unsigned int, unsigned char, signed short, unsigned int);
extern signed short (*v12) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned char v13 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
void v19 (signed char, signed short, signed short);
void (*v20) (signed char, signed short, signed short) = v19;
extern signed int v21 (signed short, signed char, unsigned short);
extern signed int (*v22) (signed short, signed char, unsigned short);
void v23 (signed char, signed char, unsigned short);
void (*v24) (signed char, signed char, unsigned short) = v23;
signed short v25 (unsigned int, unsigned char, unsigned short, unsigned short);
signed short (*v26) (unsigned int, unsigned char, unsigned short, unsigned short) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v58 = 4;
unsigned short v57 = 5;
unsigned short v56 = 1;

void v29 (void)
{
{
for (;;) {
unsigned char v61 = 4;
signed char v60 = 0;
signed char v59 = -3;
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

signed short v25 (unsigned int v62, unsigned char v63, unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
signed short v67 = 1;
unsigned int v66 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v69, signed char v70, unsigned short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 3;
unsigned short v73 = 3;
unsigned short v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v75, signed short v76, signed short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -2;
signed char v79 = 0;
signed short v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 2;
signed short v83 = 3;
signed char v82 = 0;
trace++;
switch (trace)
{
case 9: 
return 3;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed char v87 = -2;
unsigned short v86 = 6;
unsigned char v85 = 6;
trace++;
switch (trace)
{
case 8: 
{
signed char v88;
unsigned short v89;
v88 = 0 + -4;
v89 = v7 (v88);
history[history_index++] = (int)v89;
}
break;
case 10: 
{
signed short v90;
unsigned char v91;
v90 = -4 - 0;
v91 = v27 (v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
