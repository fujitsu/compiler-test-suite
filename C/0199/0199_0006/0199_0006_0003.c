#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed short v3 (unsigned int, signed int);
extern signed short (*v4) (unsigned int, signed int);
extern unsigned short v5 (unsigned short, signed char);
extern unsigned short (*v6) (unsigned short, signed char);
extern signed int v7 (unsigned int, unsigned int);
extern signed int (*v8) (unsigned int, unsigned int);
unsigned short v9 (signed short);
unsigned short (*v10) (signed short) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (signed char, unsigned int);
extern void (*v16) (signed char, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (unsigned short, signed int, signed short);
extern signed char (*v20) (unsigned short, signed int, signed short);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
void v23 (signed char, signed int, signed short, signed int);
void (*v24) (signed char, signed int, signed short, signed int) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v67 = 3;
signed int v66 = 3;
unsigned short v65 = 5;

unsigned char v25 (void)
{
{
for (;;) {
signed int v70 = -3;
signed int v69 = -2;
unsigned short v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v71, signed int v72, signed short v73, signed int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -4;
unsigned int v76 = 4U;
signed short v75 = 3;
trace++;
switch (trace)
{
case 10: 
{
signed short v78;
unsigned int v79;
v78 = v75 + v75;
v79 = v27 (v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned char v82 = 5;
signed int v81 = 0;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -3;
unsigned int v85 = 6U;
signed int v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v89 = 7U;
signed int v88 = -4;
signed int v87 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v90;
unsigned int v91;
signed int v92;
v90 = 6U + v89;
v91 = v89 - v89;
v92 = v7 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
