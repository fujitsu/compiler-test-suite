#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern void v3 (void);
extern void (*v4) (void);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
void v9 (signed char, signed char);
void (*v10) (signed char, signed char) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed short v13 (unsigned char, signed int);
extern signed short (*v14) (unsigned char, signed int);
signed char v15 (unsigned short, signed short, signed short);
signed char (*v16) (unsigned short, signed short, signed short) = v15;
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
unsigned short v23 (unsigned short);
unsigned short (*v24) (unsigned short) = v23;
extern unsigned short v25 (signed int, signed int, signed short);
extern unsigned short (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed int, unsigned short, unsigned int);
extern signed int (*v28) (signed int, unsigned short, unsigned int);
extern unsigned short v29 (signed char, signed short, signed char, signed int);
extern unsigned short (*v30) (signed char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = -3;
signed char v64 = 1;
signed char v63 = 0;

unsigned short v23 (unsigned short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
unsigned char v68 = 2;
unsigned char v67 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v70, signed short v71, signed short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -2;
unsigned char v74 = 6;
signed short v73 = 0;
trace++;
switch (trace)
{
case 5: 
return v75;
case 10: 
return v75;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v78 = 6;
unsigned short v77 = 3;
unsigned short v76 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v79, signed char v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 1;
signed char v82 = -1;
unsigned short v81 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 3;
signed int v86 = -1;
signed char v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
