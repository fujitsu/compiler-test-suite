#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
extern signed int v3 (unsigned short, signed int, unsigned char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, signed short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short, signed short);
unsigned short v7 (signed char, unsigned char, signed char, unsigned int);
unsigned short (*v8) (signed char, unsigned char, signed char, unsigned int) = v7;
signed char v9 (unsigned int, unsigned int, unsigned short);
signed char (*v10) (unsigned int, unsigned int, unsigned short) = v9;
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
extern signed char v23 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v24) (signed int, unsigned short, unsigned char, unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern void v27 (signed short, signed int, signed short);
extern void (*v28) (signed short, signed int, signed short);
extern unsigned int v29 (signed short, unsigned int);
extern unsigned int (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 1;
unsigned char v70 = 3;
unsigned int v69 = 0U;

signed short v25 (void)
{
{
for (;;) {
unsigned int v74 = 4U;
unsigned char v73 = 4;
signed short v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 0;
unsigned char v77 = 1;
unsigned int v76 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v79, unsigned int v80, unsigned short v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 1U;
signed char v83 = 2;
signed int v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v85, unsigned char v86, signed char v87, unsigned int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 7;
unsigned int v90 = 2U;
unsigned short v89 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed short v92;
unsigned int v93;
unsigned int v94;
v92 = 3 + 0;
v93 = v90 + v88;
v94 = v29 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
{
signed short v95;
unsigned int v96;
unsigned int v97;
v95 = 3 - 3;
v96 = v88 - 7U;
v97 = v29 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
return 4;
default: abort ();
}
}
}
}
