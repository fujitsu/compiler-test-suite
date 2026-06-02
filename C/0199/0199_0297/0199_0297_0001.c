#include <stdlib.h>
void v3 (signed int);
void (*v4) (signed int) = v3;
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (unsigned char, unsigned char);
unsigned short (*v12) (unsigned char, unsigned char) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
signed int v17 (unsigned short, signed short, unsigned int);
signed int (*v18) (unsigned short, signed short, unsigned int) = v17;
extern unsigned short v19 (signed char, signed char);
extern unsigned short (*v20) (signed char, signed char);
signed short v21 (unsigned char, signed short, unsigned short);
signed short (*v22) (unsigned char, signed short, unsigned short) = v21;
extern unsigned short v23 (signed short, signed int, signed char, unsigned int);
extern unsigned short (*v24) (signed short, signed int, signed char, unsigned int);
extern unsigned int v25 (unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, signed int, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (unsigned short, signed int, unsigned char, signed short);
extern signed int (*v30) (unsigned short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v62 = 2;
unsigned int v61 = 0U;
unsigned int v60 = 7U;

signed short v21 (unsigned char v63, signed short v64, unsigned short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 5;
unsigned short v67 = 7;
signed short v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v69, signed short v70, unsigned int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 5;
unsigned char v73 = 3;
unsigned short v72 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v75, unsigned char v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 1U;
signed char v78 = 2;
signed int v77 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v80;
signed int v81;
signed char v82;
unsigned int v83;
unsigned short v84;
v80 = -3 - -1;
v81 = v77 + -4;
v82 = 0 + 1;
v83 = 7U - v79;
v84 = v23 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -3;
unsigned char v87 = 4;
signed int v86 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 7;
unsigned int v91 = 4U;
unsigned int v90 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
