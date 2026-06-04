#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed int, signed char);
extern signed int (*v2) (signed int, signed short, signed int, signed char);
extern unsigned char v3 (signed int, unsigned int, signed char, signed char);
extern unsigned char (*v4) (signed int, unsigned int, signed char, signed char);
unsigned char v5 (unsigned short, signed int);
unsigned char (*v6) (unsigned short, signed int) = v5;
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed short v19 (signed short, unsigned char, signed short);
extern signed short (*v20) (signed short, unsigned char, signed short);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern unsigned short v25 (signed int, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed int);
unsigned char v27 (signed int, signed int, unsigned short);
unsigned char (*v28) (signed int, signed int, unsigned short) = v27;
extern void v29 (signed int, signed int, signed short);
extern void (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = 0;
signed char v84 = 2;
unsigned short v83 = 4;

unsigned char v27 (signed int v86, signed int v87, unsigned short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -4;
unsigned short v90 = 5;
unsigned int v89 = 5U;
trace++;
switch (trace)
{
case 6: 
return 1;
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v94 = 5;
signed short v93 = -3;
unsigned int v92 = 7U;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 3;
unsigned int v97 = 2U;
signed char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 2;
unsigned int v102 = 2U;
signed char v101 = -3;
trace++;
switch (trace)
{
case 1: 
return 1;
case 3: 
{
unsigned short v104;
v104 = v9 ();
history[history_index++] = (int)v104;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}
