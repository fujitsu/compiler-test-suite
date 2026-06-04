#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, signed char, signed short);
extern unsigned int (*v12) (unsigned char, signed char, signed short);
extern signed int v15 (signed int, unsigned int, signed short);
extern signed int (*v16) (signed int, unsigned int, signed short);
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
static unsigned char v19 (void);
static unsigned char (*v20) (void) = v19;
signed char v21 (unsigned int, unsigned short);
signed char (*v22) (unsigned int, unsigned short) = v21;
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern void v27 (unsigned char, signed short, signed char, unsigned short);
extern void (*v28) (unsigned char, signed short, signed char, unsigned short);
unsigned short v29 (unsigned int, unsigned char, unsigned int, signed int);
unsigned short (*v30) (unsigned int, unsigned char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = -2;
signed char v75 = 2;
signed char v74 = -3;

unsigned short v29 (unsigned int v77, unsigned char v78, unsigned int v79, signed int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 3;
signed int v82 = 3;
signed int v81 = 3;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 2;
signed short v87 = -3;
signed int v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (void)
{
{
for (;;) {
unsigned int v91 = 0U;
unsigned char v90 = 2;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
case 4: 
return v90;
default: abort ();
}
}
}
}

signed int v17 (signed char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
signed char v94 = -1;
unsigned short v93 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v96;
v96 = v19 ();
history[history_index++] = (int)v96;
}
break;
case 5: 
{
signed short v97;
unsigned short v98;
v97 = -1 + 0;
v98 = v25 (v97);
history[history_index++] = (int)v98;
}
break;
case 7: 
{
signed short v99;
unsigned int v100;
unsigned short v101;
v99 = 0 - 3;
v100 = 3U - 1U;
v101 = v23 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned char v104 = 7;
unsigned char v103 = 5;
unsigned char v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
