#include <stdlib.h>
extern signed int v1 (unsigned char, signed char, signed int);
extern signed int (*v2) (unsigned char, signed char, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned short v15 (signed int, signed int, unsigned char, unsigned char);
extern unsigned short (*v16) (signed int, signed int, unsigned char, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short);
signed char v21 (signed short, unsigned char);
signed char (*v22) (signed short, unsigned char) = v21;
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
signed int v29 (signed short, signed char, unsigned char, unsigned short);
signed int (*v30) (signed short, signed char, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = 0;
signed short v65 = 1;
unsigned short v64 = 7;

signed int v29 (signed short v67, signed char v68, unsigned char v69, unsigned short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
unsigned char v72 = 6;
signed char v71 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 5U;
unsigned char v76 = 0;
signed char v75 = 1;
trace++;
switch (trace)
{
case 2: 
return v76;
default: abort ();
}
}
}
}

signed char v21 (signed short v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
signed short v81 = 1;
unsigned char v80 = 0;
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
unsigned short v85 = 1;
unsigned char v84 = 6;
signed short v83 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed char v88 = 2;
unsigned short v87 = 1;
unsigned int v86 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
