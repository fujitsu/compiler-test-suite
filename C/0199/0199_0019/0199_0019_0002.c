#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, unsigned char);
extern unsigned short (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
signed short v5 (signed char, signed short);
signed short (*v6) (signed char, signed short) = v5;
extern signed short v7 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, signed char, unsigned char);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern signed short v11 (signed int, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned int, signed short);
extern signed int v13 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed char, signed char, unsigned short, signed short);
extern unsigned short v17 (unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int);
static signed short v19 (signed int);
static signed short (*v20) (signed int) = v19;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned int v25 (signed short, signed char);
unsigned int (*v26) (signed short, signed char) = v25;
extern signed char v27 (unsigned short, signed short, unsigned int, signed char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, signed char);
extern unsigned int v29 (signed int, unsigned int, signed short);
extern unsigned int (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 3;
unsigned short v81 = 7;
signed char v80 = -3;

unsigned int v25 (signed short v83, signed char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 3;
unsigned short v86 = 5;
unsigned int v85 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v19 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 2;
unsigned int v90 = 7U;
signed int v89 = -4;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned int v94 = 5U;
unsigned char v93 = 1;
unsigned int v92 = 4U;
trace++;
switch (trace)
{
case 3: 
{
signed int v95;
signed short v96;
v95 = 2 + -4;
v96 = v19 (v95);
history[history_index++] = (int)v96;
}
break;
case 5: 
return -3;
default: abort ();
}
}
}
}

signed short v5 (signed char v97, signed short v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 2;
unsigned char v100 = 6;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
