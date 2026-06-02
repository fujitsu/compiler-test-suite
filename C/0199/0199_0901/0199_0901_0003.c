#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned char);
signed short v3 (signed char, unsigned char);
signed short (*v4) (signed char, unsigned char) = v3;
signed char v5 (signed int, signed short, unsigned short, unsigned int);
signed char (*v6) (signed int, signed short, unsigned short, unsigned int) = v5;
extern unsigned short v7 (signed char, unsigned char);
extern unsigned short (*v8) (signed char, unsigned char);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed short v19 (signed char, signed char, signed short);
extern signed short (*v20) (signed char, signed char, signed short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
void v27 (signed short);
void (*v28) (signed short) = v27;
unsigned int v29 (signed char);
unsigned int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 2;
signed char v69 = 0;
unsigned int v68 = 1U;

unsigned int v29 (signed char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
signed char v73 = 0;
signed int v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (signed short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 3;
unsigned char v77 = 5;
unsigned short v76 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed int v79;
unsigned int v80;
v79 = 3 - 1;
v80 = v23 (v79);
history[history_index++] = (int)v80;
}
break;
case 8: 
{
signed int v81;
unsigned int v82;
v81 = 1 - -3;
v82 = v23 (v81);
history[history_index++] = (int)v82;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v5 (signed int v83, signed short v84, unsigned short v85, unsigned int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 3;
signed char v88 = 2;
unsigned char v87 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v90, unsigned char v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -3;
unsigned char v93 = 5;
unsigned int v92 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
