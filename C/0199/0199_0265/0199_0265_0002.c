#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (signed short, signed short, unsigned short);
extern signed int (*v4) (signed short, signed short, unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
static signed short v7 (unsigned int);
static signed short (*v8) (unsigned int) = v7;
extern unsigned char v9 (unsigned char, signed char, signed int);
extern unsigned char (*v10) (unsigned char, signed char, signed int);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed int v23 (signed char, unsigned int, unsigned char, signed int);
extern signed int (*v24) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (signed short, signed int, unsigned int);
extern signed int (*v28) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = 0;
unsigned char v75 = 1;
unsigned char v74 = 3;

void v21 (unsigned int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 0;
unsigned short v79 = 6;
signed char v78 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 3;
signed int v83 = 2;
unsigned short v82 = 3;
trace++;
switch (trace)
{
case 8: 
return -4;
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v87 = 5;
unsigned short v86 = 1;
unsigned int v85 = 6U;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v88;
v88 = v25 ();
history[history_index++] = (int)v88;
}
break;
case 7: 
{
unsigned int v89;
signed short v90;
v89 = v85 - v85;
v90 = v7 (v89);
history[history_index++] = (int)v90;
}
break;
case 9: 
{
unsigned short v91;
unsigned int v92;
unsigned int v93;
v91 = v86 + v86;
v92 = v85 + v85;
v93 = v13 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}
