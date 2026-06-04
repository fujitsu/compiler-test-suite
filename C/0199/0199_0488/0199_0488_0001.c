#include <stdlib.h>
extern void v1 (signed short, signed char);
extern void (*v2) (signed short, signed char);
unsigned short v3 (unsigned short);
unsigned short (*v4) (unsigned short) = v3;
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed char, unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char, signed char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern void v13 (unsigned char, signed short);
extern void (*v14) (unsigned char, signed short);
extern signed short v15 (signed int, signed short, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned short);
unsigned char v17 (signed char, signed int);
unsigned char (*v18) (signed char, signed int) = v17;
extern unsigned char v19 (signed char, signed char, signed int);
extern unsigned char (*v20) (signed char, signed char, signed int);
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (signed char, unsigned short);
extern void (*v26) (signed char, unsigned short);
signed short v27 (signed int);
signed short (*v28) (signed int) = v27;
extern signed int v29 (signed char, signed char, unsigned int);
extern signed int (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = 0;
signed char v65 = 3;
unsigned short v64 = 5;

signed short v27 (signed int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -2;
unsigned char v69 = 4;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 4U;
signed int v74 = 3;
unsigned int v73 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v78 = 3;
signed char v77 = -2;
unsigned short v76 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v79;
signed int v80;
unsigned short v81;
v79 = v76 - v76;
v80 = 0 + -4;
v81 = v21 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 5: 
return 2U;
case 7: 
{
unsigned short v82;
signed int v83;
unsigned short v84;
v82 = v76 + v76;
v83 = -1 + -4;
v84 = v21 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 9: 
{
unsigned short v85;
signed int v86;
unsigned short v87;
v85 = 1 - v76;
v86 = -1 - 3;
v87 = v21 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 11: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 1;
unsigned short v90 = 6;
unsigned int v89 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
