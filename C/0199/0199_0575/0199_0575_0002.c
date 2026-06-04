#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, unsigned short, unsigned short);
extern void (*v4) (signed short, unsigned short, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, unsigned char);
extern signed short (*v8) (signed int, unsigned char);
extern unsigned int v9 (signed char, unsigned int);
extern unsigned int (*v10) (signed char, unsigned int);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
signed int v15 (signed short, unsigned char, signed short);
signed int (*v16) (signed short, unsigned char, signed short) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed char);
extern unsigned int (*v20) (signed char, signed char);
signed int v21 (unsigned int, unsigned short, signed short);
signed int (*v22) (unsigned int, unsigned short, signed short) = v21;
extern unsigned int v23 (signed char, unsigned int, unsigned int);
extern unsigned int (*v24) (signed char, unsigned int, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (signed int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int);
extern void v29 (unsigned int, signed char, signed int);
extern void (*v30) (unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v70 = 0;
signed int v69 = -4;
signed char v68 = 3;

signed int v21 (unsigned int v71, unsigned short v72, signed short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 2;
unsigned char v75 = 6;
unsigned short v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed char v79 = 2;
unsigned char v78 = 2;
unsigned int v77 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v80, unsigned char v81, signed short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -4;
unsigned short v84 = 5;
signed int v83 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v86;
v86 = v25 ();
history[history_index++] = (int)v86;
}
break;
case 3: 
{
unsigned int v87;
v87 = v25 ();
history[history_index++] = (int)v87;
}
break;
case 5: 
return v85;
default: abort ();
}
}
}
}

unsigned char v11 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 5;
signed int v90 = -4;
signed char v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
