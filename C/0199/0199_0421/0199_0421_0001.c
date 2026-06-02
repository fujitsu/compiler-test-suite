#include <stdlib.h>
unsigned short v1 (signed char, signed short, unsigned short);
unsigned short (*v2) (signed char, signed short, unsigned short) = v1;
signed int v3 (unsigned char, unsigned short, unsigned int);
signed int (*v4) (unsigned char, unsigned short, unsigned int) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
static void v7 (void);
static void (*v8) (void) = v7;
extern unsigned short v9 (signed char, signed char, signed short, unsigned short);
extern unsigned short (*v10) (signed char, signed char, signed short, unsigned short);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned char v13 (signed char, signed short, signed int, signed short);
extern unsigned char (*v14) (signed char, signed short, signed int, signed short);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern signed char v17 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v18) (unsigned short, unsigned char, signed int, unsigned short);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned short, unsigned char, signed char);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned int v25 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v26) (unsigned char, signed short, signed short, unsigned char);
extern signed short v29 (unsigned char, signed short, signed int, unsigned char);
extern signed short (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = -2;
signed int v51 = -1;
unsigned char v50 = 1;

static void v7 (void)
{
{
for (;;) {
signed short v55 = 3;
unsigned int v54 = 4U;
unsigned short v53 = 6;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed int v58 = 3;
signed char v57 = 0;
unsigned int v56 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v59, unsigned short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 1;
unsigned char v63 = 4;
unsigned char v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v65, signed short v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
signed int v69 = 2;
signed short v68 = 2;
trace++;
switch (trace)
{
case 0: 
return v70;
case 1: 
{
v7 ();
}
break;
case 3: 
{
signed short v71;
unsigned char v72;
v71 = 3 + 3;
v72 = 2 + 2;
v15 (v71, v72);
}
break;
case 5: 
{
unsigned char v73;
signed short v74;
signed short v75;
unsigned char v76;
unsigned int v77;
v73 = 4 - 2;
v74 = -4 + v68;
v75 = v68 + v66;
v76 = 0 - 5;
v77 = v25 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 13: 
return v70;
default: abort ();
}
}
}
}
