#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char);
extern signed short v3 (signed int, signed char, signed int);
extern signed short (*v4) (signed int, signed char, signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed int v7 (unsigned char, signed char);
signed int (*v8) (unsigned char, signed char) = v7;
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
unsigned short v11 (signed int, signed char, signed short, signed short);
unsigned short (*v12) (signed int, signed char, signed short, signed short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (signed char, signed char, signed char, signed short);
extern unsigned int (*v22) (signed char, signed char, signed char, signed short);
extern unsigned int v23 (unsigned short, unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed int, unsigned short);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed char, signed char, unsigned int, signed int);
extern unsigned char (*v28) (signed char, signed char, unsigned int, signed int);
static unsigned short v29 (unsigned short, signed int);
static unsigned short (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v71 = 0;
signed short v70 = 1;
unsigned char v69 = 4;

static unsigned short v29 (unsigned short v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 2;
unsigned int v75 = 5U;
unsigned short v74 = 7;
trace++;
switch (trace)
{
case 4: 
return 7;
default: abort ();
}
}
}
}

unsigned short v11 (signed int v77, signed char v78, signed short v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -3;
signed int v82 = 2;
unsigned int v81 = 7U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v84;
signed int v85;
unsigned short v86;
v84 = 1 - 7;
v85 = v77 + v77;
v86 = v29 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 5: 
{
unsigned int v87;
signed int v88;
signed short v89;
v87 = 5U + v81;
v88 = -3 + v77;
v89 = v19 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

signed int v7 (unsigned char v90, signed char v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -4;
unsigned int v93 = 4U;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
