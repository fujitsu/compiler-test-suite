#include <stdlib.h>
unsigned short v1 (unsigned int, unsigned short, unsigned int, signed char);
unsigned short (*v2) (unsigned int, unsigned short, unsigned int, signed char) = v1;
void v3 (unsigned short, signed short, signed int, unsigned char);
void (*v4) (unsigned short, signed short, signed int, unsigned char) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
void v7 (unsigned char, signed int);
void (*v8) (unsigned char, signed int) = v7;
static void v9 (unsigned short, unsigned short);
static void (*v10) (unsigned short, unsigned short) = v9;
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed short, signed int, unsigned char);
extern signed int (*v18) (unsigned int, signed short, signed int, unsigned char);
unsigned short v19 (unsigned int);
unsigned short (*v20) (unsigned int) = v19;
extern unsigned short v21 (signed short, signed short);
extern unsigned short (*v22) (signed short, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 5;
signed int v63 = -1;
unsigned char v62 = 2;

unsigned short v19 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
unsigned int v67 = 3U;
unsigned short v66 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v9 (unsigned short v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 2;
unsigned short v72 = 4;
unsigned short v71 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v74;
v74 = v25 ();
history[history_index++] = (int)v74;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v7 (unsigned char v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 3;
signed int v78 = 2;
unsigned short v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v80, signed short v81, signed int v82, unsigned char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 1;
signed short v85 = -3;
unsigned short v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v87, unsigned short v88, unsigned int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
signed char v92 = 2;
signed short v91 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v94;
v94 = v5 ();
history[history_index++] = (int)v94;
}
break;
case 2: 
{
unsigned short v95;
unsigned short v96;
v95 = v93 + v88;
v96 = v93 - v88;
v9 (v95, v96);
}
break;
case 14: 
return v93;
default: abort ();
}
}
}
}
