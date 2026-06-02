#include <stdlib.h>
extern void v1 (signed int, signed char, signed char, unsigned char);
extern void (*v2) (signed int, signed char, signed char, unsigned char);
void v3 (signed int, unsigned int, unsigned short);
void (*v4) (signed int, unsigned int, unsigned short) = v3;
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
extern unsigned int v7 (signed short, signed char, unsigned short, signed char);
extern unsigned int (*v8) (signed short, signed char, unsigned short, signed char);
extern unsigned char v9 (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short, unsigned int);
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
extern unsigned short v13 (signed char, signed short, signed char, unsigned char);
extern unsigned short (*v14) (signed char, signed short, signed char, unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
extern signed int v23 (signed int, unsigned char, unsigned char);
extern signed int (*v24) (signed int, unsigned char, unsigned char);
signed short v25 (signed short, signed short);
signed short (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (unsigned short, signed int, signed char);
extern unsigned char (*v28) (unsigned short, signed int, signed char);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 0;
unsigned short v52 = 4;
unsigned short v51 = 5;

signed short v25 (signed short v54, signed short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 2U;
signed int v57 = 3;
unsigned int v56 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 5;
signed char v61 = -2;
unsigned char v60 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v63;
signed int v64;
signed char v65;
unsigned char v66;
v63 = 1 - v62;
v64 = 2 + -3;
v65 = v59 - v59;
v66 = v27 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 3: 
return v60;
default: abort ();
}
}
}
}

void v3 (signed int v67, unsigned int v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 0;
signed int v71 = 2;
signed int v70 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
