#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned int);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned int, signed short, signed int);
extern unsigned short (*v12) (unsigned int, signed short, signed int);
unsigned short v13 (signed char, unsigned char, unsigned short);
unsigned short (*v14) (signed char, unsigned char, unsigned short) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v17 (signed short, unsigned int, signed short);
extern unsigned short (*v18) (signed short, unsigned int, signed short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned short v23 (signed char, unsigned int, signed int, unsigned int);
extern unsigned short (*v24) (signed char, unsigned int, signed int, unsigned int);
extern void v25 (signed short, signed char, unsigned char);
extern void (*v26) (signed short, signed char, unsigned char);
unsigned short v27 (signed char, signed char, unsigned char, unsigned char);
unsigned short (*v28) (signed char, signed char, unsigned char, unsigned char) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 1;
unsigned int v77 = 2U;
signed char v76 = -2;

unsigned short v27 (signed char v79, signed char v80, unsigned char v81, unsigned char v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 6;
signed short v84 = 3;
unsigned char v83 = 7;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v88 = 6;
signed int v87 = 0;
unsigned char v86 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed short v89;
unsigned int v90;
signed short v91;
unsigned short v92;
v89 = -1 + -1;
v90 = 4U + 7U;
v91 = -1 - 3;
v92 = v17 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
{
signed short v93;
unsigned int v94;
signed short v95;
unsigned short v96;
v93 = -1 + -4;
v94 = 6U + 7U;
v95 = 2 - 2;
v96 = v17 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v97, unsigned char v98, unsigned short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 5;
unsigned char v101 = 2;
unsigned int v100 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned short v105 = 3;
unsigned short v104 = 3;
unsigned short v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
