#include <stdlib.h>
signed int v1 (unsigned int);
signed int (*v2) (unsigned int) = v1;
extern signed int v3 (signed char, unsigned int, signed short);
extern signed int (*v4) (signed char, unsigned int, signed short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
signed char v7 (signed int, unsigned char, unsigned int);
signed char (*v8) (signed int, unsigned char, unsigned int) = v7;
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern signed char v25 (signed char, signed short, signed char, unsigned int);
extern signed char (*v26) (signed char, signed short, signed char, unsigned int);
extern unsigned int v27 (unsigned char, signed int, signed char, signed int);
extern unsigned int (*v28) (unsigned char, signed int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = -4;
unsigned char v68 = 1;
signed short v67 = -4;

signed int v23 (signed char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 6U;
signed char v72 = -2;
unsigned char v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v74, unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 4;
signed int v78 = -2;
unsigned short v77 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v82 = 2U;
signed int v81 = -2;
signed int v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 0;
signed char v85 = -2;
signed int v84 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v87;
signed int v88;
signed char v89;
signed int v90;
unsigned int v91;
v87 = 7 + 2;
v88 = v84 + 2;
v89 = 2 + v86;
v90 = v84 - v84;
v91 = v27 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 6: 
{
unsigned char v92;
v92 = v15 ();
history[history_index++] = (int)v92;
}
break;
case 14: 
return v84;
default: abort ();
}
}
}
}
