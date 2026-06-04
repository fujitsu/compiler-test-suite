#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned char v11 (unsigned int, unsigned char, unsigned char);
unsigned char (*v12) (unsigned int, unsigned char, unsigned char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (unsigned int, unsigned short, signed int);
extern signed short (*v16) (unsigned int, unsigned short, signed int);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (signed short, unsigned int, signed int);
extern void (*v22) (signed short, unsigned int, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (signed int, signed int, signed short, unsigned short);
extern signed int (*v26) (signed int, signed int, signed short, unsigned short);
static void v27 (signed int, unsigned short, signed char);
static void (*v28) (signed int, unsigned short, signed char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = 1;
signed short v78 = -4;
signed short v77 = 3;

static void v27 (signed int v80, unsigned short v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 0;
unsigned int v84 = 5U;
unsigned char v83 = 5;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed char v88 = -1;
signed short v87 = 3;
signed char v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v89, unsigned char v90, unsigned char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 5;
unsigned int v93 = 0U;
signed short v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed short v97 = 2;
signed char v96 = 0;
signed short v95 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v98;
v98 = v23 ();
history[history_index++] = (int)v98;
}
break;
case 5: 
{
signed char v99;
v99 = v29 ();
history[history_index++] = (int)v99;
}
break;
case 7: 
{
signed int v100;
unsigned short v101;
signed char v102;
v100 = -4 - -4;
v101 = 1 + 1;
v102 = -4 - v96;
v27 (v100, v101, v102);
}
break;
case 9: 
return 1;
default: abort ();
}
}
}
}
