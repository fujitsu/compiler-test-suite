#include <stdlib.h>
extern void v3 (signed int, signed short);
extern void (*v4) (signed int, signed short);
extern unsigned int v5 (signed char, unsigned short, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short, unsigned short);
unsigned short v7 (unsigned short);
unsigned short (*v8) (unsigned short) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed short v11 (signed char, unsigned int);
signed short (*v12) (signed char, unsigned int) = v11;
extern unsigned int v13 (unsigned char, signed char, unsigned short);
extern unsigned int (*v14) (unsigned char, signed char, unsigned short);
extern unsigned char v15 (signed int, signed char, signed int, unsigned int);
extern unsigned char (*v16) (signed int, signed char, signed int, unsigned int);
extern unsigned int v17 (unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char);
signed char v19 (signed int, unsigned int);
signed char (*v20) (signed int, unsigned int) = v19;
unsigned char v21 (unsigned short);
unsigned char (*v22) (unsigned short) = v21;
extern void v23 (unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned int, signed char, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 1;
unsigned short v82 = 2;
unsigned char v81 = 1;

unsigned char v21 (unsigned short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 4U;
signed short v86 = 3;
signed int v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = 3;
signed short v91 = 3;
unsigned short v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 3;
unsigned short v96 = 0;
signed short v95 = 2;
trace++;
switch (trace)
{
case 3: 
return v95;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 2;
unsigned short v100 = 4;
unsigned short v99 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v102;
v102 = v9 ();
history[history_index++] = (int)v102;
}
break;
case 13: 
return v99;
default: abort ();
}
}
}
}
