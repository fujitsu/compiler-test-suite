#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
unsigned short v3 (unsigned short, signed short, unsigned short, unsigned short);
unsigned short (*v4) (unsigned short, signed short, unsigned short, unsigned short) = v3;
unsigned char v5 (signed int);
unsigned char (*v6) (signed int) = v5;
extern signed int v7 (unsigned int, unsigned int);
extern signed int (*v8) (unsigned int, unsigned int);
extern void v9 (signed char, signed short, signed short);
extern void (*v10) (signed char, signed short, signed short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed short v15 (unsigned char, signed char, unsigned short, signed short);
signed short (*v16) (unsigned char, signed char, unsigned short, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (signed int, signed int, signed int, signed int);
extern void (*v28) (signed int, signed int, signed int, signed int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 7;
unsigned int v77 = 0U;
unsigned int v76 = 5U;

unsigned short v19 (signed int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -3;
signed short v81 = -2;
signed char v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v83, signed char v84, unsigned short v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 1;
signed char v88 = 2;
signed int v87 = 0;
trace++;
switch (trace)
{
case 6: 
return v86;
case 8: 
return v86;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 6;
signed int v92 = 1;
signed short v91 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v94;
unsigned int v95;
signed int v96;
v94 = 6U + 0U;
v95 = 4U + 5U;
v96 = v7 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 3: 
return 4;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v97, signed short v98, unsigned short v99, unsigned short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 3;
unsigned short v102 = 7;
unsigned int v101 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
