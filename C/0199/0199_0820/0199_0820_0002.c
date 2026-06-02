#include <stdlib.h>
extern void v1 (signed short, signed char, unsigned char);
extern void (*v2) (signed short, signed char, unsigned char);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned int v5 (signed char, unsigned short, signed int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed short, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int, signed int);
extern void v9 (unsigned int, signed short, unsigned char);
extern void (*v10) (unsigned int, signed short, unsigned char);
signed char v11 (signed int, unsigned int);
signed char (*v12) (signed int, unsigned int) = v11;
extern signed int v13 (unsigned short, signed char, signed char, signed int);
extern signed int (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
unsigned short v17 (signed char, unsigned short, signed int);
unsigned short (*v18) (signed char, unsigned short, signed int) = v17;
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
unsigned short v23 (unsigned int, signed short);
unsigned short (*v24) (unsigned int, signed short) = v23;
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
unsigned char v27 (signed int);
unsigned char (*v28) (signed int) = v27;
extern unsigned short v29 (signed int, signed char, signed char);
extern unsigned short (*v30) (signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = -4;
unsigned short v69 = 4;
signed int v68 = -1;

unsigned char v27 (signed int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -3;
unsigned int v73 = 1U;
unsigned short v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = 1;
signed char v78 = 2;
signed short v77 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v80;
signed short v81;
unsigned int v82;
v80 = 4U + 4U;
v81 = v77 - v79;
v82 = v19 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 9: 
{
unsigned int v83;
signed short v84;
unsigned int v85;
v83 = v75 + 2U;
v84 = 2 + 1;
v85 = v19 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed int v21 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 1;
signed int v88 = -1;
signed int v87 = -2;
trace++;
switch (trace)
{
case 4: 
return v88;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v90, unsigned short v91, signed int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 7;
signed short v94 = -1;
signed short v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 2;
unsigned short v99 = 7;
unsigned char v98 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v103 = -1;
unsigned char v102 = 7;
signed short v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
