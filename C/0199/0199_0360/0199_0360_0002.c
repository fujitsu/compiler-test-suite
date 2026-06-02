#include <stdlib.h>
signed short v1 (unsigned int);
signed short (*v2) (unsigned int) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned char, unsigned int, signed int);
extern signed short (*v8) (unsigned char, unsigned int, signed int);
extern void v9 (signed short, signed short, unsigned char, unsigned short);
extern void (*v10) (signed short, signed short, unsigned char, unsigned short);
extern signed char v11 (signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, unsigned char, signed int);
static signed char v13 (void);
static signed char (*v14) (void) = v13;
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed int, signed int, signed int);
extern unsigned short (*v20) (signed int, signed int, signed int);
extern unsigned int v21 (unsigned int);
extern unsigned int (*v22) (unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed short, signed char, signed short, unsigned short);
extern signed int (*v26) (signed short, signed char, signed short, unsigned short);
extern unsigned char v27 (signed char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int);
void v29 (unsigned int);
void (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 3U;
unsigned short v82 = 7;
signed char v81 = -2;

void v29 (unsigned int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 5;
signed short v86 = -1;
signed short v85 = -1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v88;
v88 = v17 ();
history[history_index++] = (int)v88;
}
break;
case 4: 
{
unsigned char v89;
v89 = v17 ();
history[history_index++] = (int)v89;
}
break;
case 6: 
return;
case 8: 
return;
case 10: 
{
unsigned char v90;
v90 = v17 ();
history[history_index++] = (int)v90;
}
break;
case 12: 
return;
case 14: 
return;
case 16: 
return;
default: abort ();
}
}
}
}

static signed char v13 (void)
{
{
for (;;) {
signed short v93 = 2;
signed short v92 = 1;
signed short v91 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v94;
v94 = 0U + 7U;
v29 (v94);
}
break;
case 17: 
return 0;
default: abort ();
}
}
}
}

signed short v1 (unsigned int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -3;
signed short v97 = 0;
unsigned int v96 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v99;
v99 = v13 ();
history[history_index++] = (int)v99;
}
break;
case 18: 
return -2;
default: abort ();
}
}
}
}
