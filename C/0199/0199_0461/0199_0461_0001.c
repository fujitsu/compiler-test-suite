#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed short v7 (unsigned short, signed short, signed char);
extern signed short (*v8) (unsigned short, signed short, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (signed short, signed char, unsigned int, signed int);
extern unsigned char (*v12) (signed short, signed char, unsigned int, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (signed char, unsigned int);
extern unsigned short (*v16) (signed char, unsigned int);
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
extern void v19 (signed int, signed char, signed short, signed short);
extern void (*v20) (signed int, signed char, signed short, signed short);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned short v23 (unsigned int);
unsigned short (*v24) (unsigned int) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v29 (unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 2;
unsigned char v78 = 1;
unsigned int v77 = 0U;

unsigned short v23 (unsigned int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -3;
signed char v82 = 0;
unsigned char v81 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed short v86 = -3;
unsigned short v85 = 6;
unsigned short v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed short v89 = -3;
unsigned int v88 = 0U;
signed int v87 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v90;
unsigned char v91;
unsigned char v92;
v90 = 6 - 1;
v91 = 4 + 4;
v92 = v29 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 5: 
{
unsigned int v93;
v93 = v13 ();
history[history_index++] = (int)v93;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned short v96 = 2;
unsigned char v95 = 5;
signed char v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
