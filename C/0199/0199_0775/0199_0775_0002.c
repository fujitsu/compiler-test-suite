#include <stdlib.h>
extern signed short v1 (signed short, signed int, unsigned short, signed short);
extern signed short (*v2) (signed short, signed int, unsigned short, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned char, signed int, unsigned int);
extern signed char (*v6) (unsigned char, signed int, unsigned int);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
signed short v9 (signed char);
signed short (*v10) (signed char) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
signed short v13 (unsigned int, signed short, unsigned int, signed int);
signed short (*v14) (unsigned int, signed short, unsigned int, signed int) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
static signed char v17 (unsigned short);
static signed char (*v18) (unsigned short) = v17;
extern void v21 (unsigned int, signed char);
extern void (*v22) (unsigned int, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed short v27 (signed int, unsigned int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned int, unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 3;
signed char v74 = 2;
signed int v73 = 3;

static signed char v17 (unsigned short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 5;
signed int v78 = -1;
unsigned short v77 = 1;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed int v82 = 2;
signed short v81 = 0;
unsigned int v80 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned int v83, signed short v84, unsigned int v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 5;
unsigned char v88 = 0;
signed int v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -2;
unsigned char v92 = 1;
unsigned char v91 = 7;
trace++;
switch (trace)
{
case 1: 
return 2;
case 3: 
{
unsigned short v94;
signed char v95;
v94 = 2 - 0;
v95 = v17 (v94);
history[history_index++] = (int)v95;
}
break;
case 5: 
{
v23 ();
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
