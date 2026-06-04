#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
extern unsigned char v5 (signed char, signed int);
extern unsigned char (*v6) (signed char, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v13 (signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed char, unsigned short, unsigned short);
signed char v15 (signed char, signed char);
signed char (*v16) (signed char, signed char) = v15;
signed char v17 (signed short, unsigned char, unsigned int);
signed char (*v18) (signed short, unsigned char, unsigned int) = v17;
void v21 (void);
void (*v22) (void) = v21;
unsigned int v23 (signed short);
unsigned int (*v24) (signed short) = v23;
extern unsigned char v25 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
signed char v29 (unsigned char, unsigned short, signed short);
signed char (*v30) (unsigned char, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 2U;
unsigned char v64 = 6;
unsigned char v63 = 0;

signed char v29 (unsigned char v66, unsigned short v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 1;
signed short v70 = 3;
signed char v69 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 1;
signed int v74 = 0;
signed short v73 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v78 = 4U;
unsigned char v77 = 5;
unsigned int v76 = 1U;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

signed char v17 (signed short v79, unsigned char v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 2;
unsigned short v83 = 2;
signed char v82 = -4;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (signed char v85, signed char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 2;
unsigned char v88 = 4;
unsigned int v87 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
