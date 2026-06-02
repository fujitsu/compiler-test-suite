#include <stdlib.h>
signed short v1 (unsigned short, signed char);
signed short (*v2) (unsigned short, signed char) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed short, signed short, signed int);
extern void (*v6) (signed short, signed short, signed short, signed int);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern signed int v11 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v12) (unsigned int, signed short, signed short, unsigned int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
unsigned short v15 (unsigned int, unsigned short, unsigned short);
unsigned short (*v16) (unsigned int, unsigned short, unsigned short) = v15;
void v17 (signed short, signed short, signed short);
void (*v18) (signed short, signed short, signed short) = v17;
extern unsigned char v19 (signed char, signed char, signed short);
extern unsigned char (*v20) (signed char, signed char, signed short);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
void v23 (void);
void (*v24) (void) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v64 = -2;
unsigned short v63 = 4;
unsigned int v62 = 5U;

signed char v25 (void)
{
{
for (;;) {
signed short v67 = 0;
signed int v66 = 2;
unsigned int v65 = 7U;
trace++;
switch (trace)
{
case 8: 
return -3;
case 10: 
return -1;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
signed char v70 = -1;
unsigned char v69 = 4;
unsigned short v68 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v71, signed short v72, signed short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 5U;
unsigned int v75 = 3U;
unsigned int v74 = 4U;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
{
signed char v77;
signed char v78;
signed short v79;
unsigned char v80;
v77 = 0 + 2;
v78 = -3 - 1;
v79 = -2 + v73;
v80 = v19 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v81, unsigned short v82, unsigned short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 2;
signed int v85 = -1;
unsigned short v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed char v89 = 3;
unsigned char v88 = 3;
unsigned int v87 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v90, signed char v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 2;
signed int v93 = -4;
signed short v92 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v95;
v95 = v3 ();
history[history_index++] = (int)v95;
}
break;
case 14: 
return v92;
default: abort ();
}
}
}
}
