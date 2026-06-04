#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short);
extern unsigned short (*v2) (signed int, unsigned int, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
signed short v7 (unsigned short, unsigned short, signed char, signed int);
signed short (*v8) (unsigned short, unsigned short, signed char, signed int) = v7;
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed char v11 (unsigned short, unsigned int, unsigned char);
extern signed char (*v12) (unsigned short, unsigned int, unsigned char);
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
unsigned char v15 (signed int, unsigned int);
unsigned char (*v16) (signed int, unsigned int) = v15;
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
extern signed short v19 (unsigned int, unsigned char);
extern signed short (*v20) (unsigned int, unsigned char);
unsigned short v21 (signed int, signed char, signed char);
unsigned short (*v22) (signed int, signed char, signed char) = v21;
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern unsigned char v25 (signed short, unsigned int, unsigned short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short, unsigned short);
signed int v27 (unsigned char, signed char, unsigned short, unsigned char);
signed int (*v28) (unsigned char, signed char, unsigned short, unsigned char) = v27;
extern unsigned int v29 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v30) (signed int, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v61 = 1;
signed int v60 = 1;
signed short v59 = 1;

signed int v27 (unsigned char v62, signed char v63, unsigned short v64, unsigned char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 1;
signed char v67 = -2;
signed short v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed int v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 0;
signed short v73 = 0;
signed short v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 5;
signed char v78 = -2;
signed char v77 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed char v80;
v80 = 2 + v77;
v9 (v80);
}
break;
case 7: 
return v79;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v81, unsigned short v82, signed char v83, signed int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 4U;
unsigned int v86 = 4U;
signed int v85 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v88;
unsigned int v89;
unsigned char v90;
signed char v91;
v88 = 0 + v81;
v89 = 3U + 2U;
v90 = 6 + 6;
v91 = v11 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}
