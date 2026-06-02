#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
signed short v3 (signed int, unsigned char);
signed short (*v4) (signed int, unsigned char) = v3;
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed char v13 (signed char);
signed char (*v14) (signed char) = v13;
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (unsigned int, signed int, signed int, unsigned short);
extern void (*v20) (unsigned int, signed int, signed int, unsigned short);
extern signed char v21 (signed char, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned short, signed short);
signed char v23 (signed char, unsigned short, unsigned short);
signed char (*v24) (signed char, unsigned short, unsigned short) = v23;
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v68 = 4U;
unsigned char v67 = 1;
unsigned short v66 = 7;

signed char v23 (signed char v69, unsigned short v70, unsigned short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
unsigned int v73 = 1U;
unsigned short v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
signed short v77 = -2;
unsigned char v76 = 1;
trace++;
switch (trace)
{
case 8: 
{
signed short v79;
unsigned char v80;
v79 = -3 + 3;
v80 = v1 (v79);
history[history_index++] = (int)v80;
}
break;
case 12: 
return v75;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 4;
signed char v83 = -4;
unsigned short v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v85, unsigned char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 4;
unsigned short v88 = 3;
unsigned int v87 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
