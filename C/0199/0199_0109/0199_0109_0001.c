#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
void v3 (unsigned short, unsigned short);
void (*v4) (unsigned short, unsigned short) = v3;
extern void v5 (signed char, unsigned short);
extern void (*v6) (signed char, unsigned short);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned int v11 (unsigned short, unsigned char, signed short);
extern unsigned int (*v12) (unsigned short, unsigned char, signed short);
unsigned char v13 (signed char, signed int, unsigned short);
unsigned char (*v14) (signed char, signed int, unsigned short) = v13;
unsigned char v15 (signed int, signed short, signed short);
unsigned char (*v16) (signed int, signed short, signed short) = v15;
extern signed int v17 (unsigned int, unsigned char, signed int, signed int);
extern signed int (*v18) (unsigned int, unsigned char, signed int, signed int);
extern unsigned int v19 (signed int, unsigned char, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, signed short, signed char);
extern signed char (*v26) (signed char, signed short, signed char);
extern signed short v29 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = 1;
signed char v57 = -2;
signed int v56 = 0;

unsigned char v15 (signed int v59, signed short v60, signed short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 0U;
unsigned short v63 = 0;
signed int v62 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v65, signed int v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -3;
unsigned int v69 = 6U;
unsigned char v68 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned short v73 = 5;
signed short v72 = -4;
unsigned char v71 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed char v74;
unsigned short v75;
v74 = -1 - -1;
v75 = 2 - v73;
v5 (v74, v75);
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed short v78 = 2;
signed short v77 = -4;
signed char v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 6;
unsigned char v82 = 5;
signed char v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
