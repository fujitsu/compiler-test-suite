#include <stdlib.h>
signed char v3 (signed short, signed short, unsigned int);
signed char (*v4) (signed short, signed short, unsigned int) = v3;
extern signed short v5 (signed int, signed int);
extern signed short (*v6) (signed int, signed int);
void v7 (signed int);
void (*v8) (signed int) = v7;
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern signed short v13 (unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int, unsigned int);
unsigned int v15 (signed short, signed short, unsigned char);
unsigned int (*v16) (signed short, signed short, unsigned char) = v15;
extern signed short v17 (signed short, unsigned char, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, unsigned char, signed char);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int);
extern signed int (*v22) (unsigned int, unsigned short, signed int);
extern unsigned char v23 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed short, signed char, unsigned char);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char, signed short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned char, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -4;
signed char v63 = -1;
unsigned char v62 = 7;

unsigned int v15 (signed short v65, signed short v66, unsigned char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -4;
unsigned int v69 = 6U;
signed int v68 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v71;
signed short v72;
unsigned short v73;
signed short v74;
unsigned char v75;
v71 = 2 - 0;
v72 = v70 - v66;
v73 = 7 + 3;
v74 = v65 - -3;
v75 = v27 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
{
signed short v76;
unsigned char v77;
unsigned char v78;
signed char v79;
signed short v80;
v76 = v66 + v70;
v77 = 1 - 0;
v78 = 6 - v67;
v79 = 3 + -2;
v80 = v17 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 7: 
return v69;
default: abort ();
}
}
}
}

unsigned short v9 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 2;
signed short v83 = 1;
signed char v82 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -4;
unsigned int v87 = 4U;
signed int v86 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v89, signed short v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 3;
unsigned short v93 = 6;
unsigned short v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
