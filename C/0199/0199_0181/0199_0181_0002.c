#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
static signed char v3 (unsigned short, unsigned short, signed short);
static signed char (*v4) (unsigned short, unsigned short, signed short) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
extern unsigned int v9 (unsigned short, signed char, signed int, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int, signed int);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
static signed short v19 (void);
static signed short (*v20) (void) = v19;
extern unsigned short v21 (signed int, unsigned int, unsigned short);
extern unsigned short (*v22) (signed int, unsigned int, unsigned short);
extern signed short v23 (unsigned int, signed char);
extern signed short (*v24) (unsigned int, signed char);
extern unsigned int v25 (unsigned int, signed int, signed char, unsigned char);
extern unsigned int (*v26) (unsigned int, signed int, signed char, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = -1;
unsigned int v64 = 6U;
signed int v63 = 3;

void v29 (void)
{
{
for (;;) {
unsigned char v68 = 5;
unsigned int v67 = 3U;
signed int v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v19 (void)
{
{
for (;;) {
signed int v71 = 3;
signed int v70 = 1;
unsigned short v69 = 6;
trace++;
switch (trace)
{
case 7: 
return 1;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed short v74 = -4;
signed int v73 = 2;
signed int v72 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v75;
signed char v76;
signed short v77;
v75 = 5U - 4U;
v76 = -4 + 2;
v77 = v23 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v80 = 6;
signed char v79 = -2;
unsigned short v78 = 4;
trace++;
switch (trace)
{
case 6: 
{
signed short v81;
v81 = v19 ();
history[history_index++] = (int)v81;
}
break;
case 8: 
return v80;
case 10: 
return v80;
default: abort ();
}
}
}
}

static signed char v3 (unsigned short v82, unsigned short v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -1;
unsigned short v86 = 4;
unsigned int v85 = 3U;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

void v1 (unsigned int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 6U;
signed short v90 = -4;
signed int v89 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v92;
unsigned short v93;
signed short v94;
signed char v95;
v92 = 7 - 7;
v93 = 2 + 3;
v94 = v90 - v90;
v95 = v3 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 2: 
{
signed int v96;
signed char v97;
v96 = v89 - -4;
v97 = v11 (v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
