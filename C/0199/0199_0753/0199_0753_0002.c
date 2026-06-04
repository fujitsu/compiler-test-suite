#include <stdlib.h>
signed short v1 (signed int, unsigned short);
signed short (*v2) (signed int, unsigned short) = v1;
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (unsigned char, signed int, unsigned int);
extern unsigned int (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned char v9 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, signed char, unsigned short, unsigned int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned int v13 (signed short, unsigned char, unsigned char, signed short);
extern unsigned int (*v14) (signed short, unsigned char, unsigned char, signed short);
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
void v21 (unsigned int, signed short, unsigned int);
void (*v22) (unsigned int, signed short, unsigned int) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
signed short v25 (unsigned short, signed int, unsigned short);
signed short (*v26) (unsigned short, signed int, unsigned short) = v25;
extern signed char v27 (signed char, signed int, signed short, unsigned short);
extern signed char (*v28) (signed char, signed int, signed short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 5;
signed short v78 = -4;
unsigned int v77 = 6U;

signed short v25 (unsigned short v80, signed int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 2;
signed char v84 = -2;
signed int v83 = 3;
trace++;
switch (trace)
{
case 2: 
return 3;
default: abort ();
}
}
}
}

void v21 (unsigned int v86, signed short v87, unsigned int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
signed short v90 = -1;
unsigned char v89 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v94 = 5;
unsigned char v93 = 5;
unsigned short v92 = 2;
trace++;
switch (trace)
{
case 7: 
return v94;
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed int v97 = -4;
unsigned short v96 = 6;
signed short v95 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v98, unsigned short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 7;
signed short v101 = -2;
signed char v100 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v103;
signed int v104;
unsigned char v105;
unsigned int v106;
v103 = v101 - 2;
v104 = v98 + 2;
v105 = 4 - 2;
v106 = v3 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v101;
default: abort ();
}
}
}
}
