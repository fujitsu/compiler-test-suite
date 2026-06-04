#include <stdlib.h>
signed char v1 (signed int, signed int, signed char);
signed char (*v2) (signed int, signed int, signed char) = v1;
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v7 (signed int, signed char, unsigned char);
unsigned char (*v8) (signed int, signed char, unsigned char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed char, signed int, unsigned char);
extern signed short (*v18) (signed char, signed int, unsigned char);
extern unsigned short v19 (unsigned int, signed char, signed char, signed int);
extern unsigned short (*v20) (unsigned int, signed char, signed char, signed int);
unsigned short v21 (signed short, signed short, signed int);
unsigned short (*v22) (signed short, signed short, signed int) = v21;
extern unsigned int v23 (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned char, unsigned char, unsigned int);
void v25 (unsigned short, signed char);
void (*v26) (unsigned short, signed char) = v25;
static signed char v27 (signed char, unsigned short);
static signed char (*v28) (signed char, unsigned short) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = 0;
unsigned short v54 = 6;
unsigned short v53 = 0;

static signed char v27 (signed char v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 2;
unsigned int v59 = 1U;
unsigned short v58 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v61;
v61 = v29 ();
history[history_index++] = (int)v61;
}
break;
case 3: 
{
unsigned char v62;
v62 = v29 ();
history[history_index++] = (int)v62;
}
break;
case 5: 
{
unsigned char v63;
v63 = v29 ();
history[history_index++] = (int)v63;
}
break;
case 7: 
return 2;
default: abort ();
}
}
}
}

void v25 (unsigned short v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -1;
signed char v67 = -1;
unsigned char v66 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed short v69, signed short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -2;
signed char v73 = 1;
signed short v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v75, signed char v76, unsigned char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 0;
signed short v79 = -2;
signed char v78 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v81, signed int v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 1U;
unsigned short v85 = 4;
signed char v84 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v87;
unsigned short v88;
signed char v89;
v87 = v84 - v84;
v88 = 6 + v85;
v89 = v27 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 8: 
{
signed short v90;
unsigned int v91;
v90 = -1 + -4;
v91 = v13 (v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return v83;
default: abort ();
}
}
}
}
