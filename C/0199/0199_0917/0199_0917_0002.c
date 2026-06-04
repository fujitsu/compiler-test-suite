#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (signed short, signed int, unsigned char, signed int);
extern void (*v4) (signed short, signed int, unsigned char, signed int);
signed short v5 (unsigned char);
signed short (*v6) (unsigned char) = v5;
extern unsigned short v7 (unsigned int, unsigned short, signed char);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (signed short, signed short, signed int, signed int);
extern void (*v14) (signed short, signed short, signed int, signed int);
extern void v15 (signed int, unsigned int, signed char, unsigned int);
extern void (*v16) (signed int, unsigned int, signed char, unsigned int);
static unsigned short v17 (unsigned char, unsigned short);
static unsigned short (*v18) (unsigned char, unsigned short) = v17;
extern void v19 (signed char, unsigned char, unsigned int, unsigned char);
extern void (*v20) (signed char, unsigned char, unsigned int, unsigned char);
extern unsigned int v21 (signed short, signed short, unsigned short, unsigned char);
extern unsigned int (*v22) (signed short, signed short, unsigned short, unsigned char);
signed int v23 (unsigned char);
signed int (*v24) (unsigned char) = v23;
extern signed short v25 (unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (unsigned int, unsigned char, unsigned int);
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 1;
unsigned char v70 = 4;
signed char v69 = 2;

signed char v29 (void)
{
{
for (;;) {
unsigned int v74 = 7U;
signed int v73 = -3;
signed short v72 = 2;
trace++;
switch (trace)
{
case 5: 
return -1;
case 7: 
return -4;
case 9: 
return -4;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed int v23 (unsigned char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 7;
signed int v77 = -2;
unsigned char v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -4;
unsigned int v82 = 5U;
unsigned short v81 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v84;
unsigned char v85;
unsigned int v86;
signed short v87;
v84 = 0U + 1U;
v85 = 7 - 0;
v86 = 3U - v82;
v87 = v25 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 13: 
return v81;
default: abort ();
}
}
}
}

signed short v5 (unsigned char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 6U;
unsigned int v90 = 7U;
signed short v89 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned int v94 = 5U;
unsigned char v93 = 6;
signed int v92 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v95;
signed short v96;
unsigned short v97;
unsigned char v98;
unsigned int v99;
v95 = 0 + -1;
v96 = -3 - -2;
v97 = 2 + 6;
v98 = 1 - 3;
v99 = v21 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 2: 
{
unsigned char v100;
unsigned short v101;
unsigned short v102;
v100 = v93 + v93;
v101 = 3 + 1;
v102 = v17 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
