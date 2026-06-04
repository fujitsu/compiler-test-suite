#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int, signed short);
extern unsigned int (*v2) (unsigned int, signed int, signed short);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
signed int v9 (void);
signed int (*v10) (void) = v9;
unsigned int v11 (unsigned int, signed short);
unsigned int (*v12) (unsigned int, signed short) = v11;
unsigned short v13 (unsigned int, unsigned int);
unsigned short (*v14) (unsigned int, unsigned int) = v13;
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed int, unsigned int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed short);
extern unsigned short v29 (unsigned short, signed int);
extern unsigned short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 7;
unsigned int v81 = 6U;
unsigned int v80 = 1U;

signed int v21 (void)
{
{
for (;;) {
signed int v85 = -2;
signed int v84 = 1;
unsigned char v83 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v86;
signed int v87;
unsigned short v88;
v86 = 7 - 2;
v87 = v85 - v85;
v88 = v29 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 7: 
return v84;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v89, unsigned int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 2;
unsigned char v92 = 0;
signed int v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 5;
unsigned int v97 = 6U;
unsigned int v96 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned int v101 = 2U;
unsigned short v100 = 4;
unsigned short v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
