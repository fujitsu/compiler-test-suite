#include <stdlib.h>
extern void v3 (signed char, signed short);
extern void (*v4) (signed char, signed short);
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
extern signed int v7 (signed int, unsigned short, signed char);
extern signed int (*v8) (signed int, unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
signed char v19 (signed int, signed short, signed short);
signed char (*v20) (signed int, signed short, signed short) = v19;
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed int v23 (unsigned short, signed int, signed char);
extern signed int (*v24) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
void v29 (unsigned char);
void (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -1;
unsigned short v82 = 1;
unsigned int v81 = 6U;

void v29 (unsigned char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 2;
unsigned short v86 = 1;
unsigned char v85 = 1;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
unsigned char v90 = 7;
unsigned int v89 = 5U;
unsigned short v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v91, signed short v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 6;
unsigned char v95 = 6;
unsigned short v94 = 4;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v97;
signed int v98;
signed char v99;
signed int v100;
v97 = v94 + v94;
v98 = v91 - 0;
v99 = -3 - 3;
v100 = v23 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 5: 
return -1;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed char v103 = -3;
unsigned char v102 = 2;
signed char v101 = 2;
trace++;
switch (trace)
{
case 11: 
return 2U;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -1;
unsigned char v106 = 6;
unsigned char v105 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
