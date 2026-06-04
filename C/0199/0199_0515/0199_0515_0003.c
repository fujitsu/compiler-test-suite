#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned int v3 (signed int, signed short, unsigned int);
extern unsigned int (*v4) (signed int, signed short, unsigned int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
signed char v9 (signed char);
signed char (*v10) (signed char) = v9;
extern signed int v11 (unsigned char, unsigned char, signed char);
extern signed int (*v12) (unsigned char, unsigned char, signed char);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned short v19 (signed int, signed char, signed short, signed char);
extern unsigned short (*v20) (signed int, signed char, signed short, signed char);
extern unsigned short v21 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v22) (signed int, unsigned char, signed char, signed int);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
unsigned int v27 (signed int);
unsigned int (*v28) (signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 1;
unsigned short v77 = 6;
unsigned short v76 = 2;

unsigned int v27 (signed int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 4U;
unsigned short v81 = 7;
signed int v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
unsigned short v85 = 1;
unsigned int v84 = 2U;
signed short v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 6;
unsigned int v88 = 1U;
signed int v87 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned char v92 = 0;
unsigned int v91 = 7U;
signed short v90 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v93;
signed short v94;
unsigned int v95;
unsigned int v96;
v93 = 2 - 1;
v94 = v90 - v90;
v95 = v91 - 6U;
v96 = v3 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 10: 
{
unsigned short v97;
unsigned int v98;
signed char v99;
v97 = 2 + 5;
v98 = v91 - 3U;
v99 = v15 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
