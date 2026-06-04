#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern unsigned short v7 (signed char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned int, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned int v13 (unsigned int, signed char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed char, unsigned char);
signed short v15 (unsigned short, unsigned short, signed char);
signed short (*v16) (unsigned short, unsigned short, signed char) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v19 (void);
extern void (*v20) (void);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned char v23 (unsigned char, signed short);
unsigned char (*v24) (unsigned char, signed short) = v23;
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
void v27 (unsigned int, unsigned char);
void (*v28) (unsigned int, unsigned char) = v27;
extern void v29 (signed char, unsigned int, unsigned char);
extern void (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = -1;
signed int v68 = -4;
signed char v67 = -3;

void v27 (unsigned int v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 5;
unsigned int v73 = 3U;
signed int v72 = 1;
trace++;
switch (trace)
{
case 1: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 5U;
signed int v78 = 3;
unsigned int v77 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed int v82 = 3;
unsigned char v81 = 3;
unsigned char v80 = 4;
trace++;
switch (trace)
{
case 4: 
return v81;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed short v85 = -2;
unsigned char v84 = 2;
signed short v83 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v86, unsigned short v87, signed char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 4U;
signed int v90 = 1;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
case 8: 
return -2;
default: abort ();
}
}
}
}
