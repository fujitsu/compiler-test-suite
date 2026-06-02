#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char);
extern unsigned short (*v4) (unsigned char, signed char);
extern signed short v5 (unsigned int, signed int, signed int);
extern signed short (*v6) (unsigned int, signed int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, signed char);
extern void (*v10) (unsigned short, signed char);
extern unsigned short v11 (signed short, unsigned short);
extern unsigned short (*v12) (signed short, unsigned short);
extern signed int v13 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char v15 (signed int, signed short);
extern unsigned char (*v16) (signed int, signed short);
void v17 (signed short, signed int, unsigned char, unsigned short);
void (*v18) (signed short, signed int, unsigned char, unsigned short) = v17;
extern signed char v19 (unsigned char, unsigned short);
extern signed char (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v22) (signed short, signed short, signed short, unsigned int);
extern unsigned int v23 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned short, unsigned short, signed char);
static unsigned int v27 (signed int);
static unsigned int (*v28) (signed int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = -2;
signed short v80 = -2;
unsigned int v79 = 7U;

static unsigned int v27 (signed int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
unsigned short v84 = 2;
unsigned short v83 = 5;
trace++;
switch (trace)
{
case 9: 
{
signed int v86;
signed short v87;
unsigned char v88;
v86 = -4 + v82;
v87 = -3 - 1;
v88 = v15 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

void v17 (signed short v89, signed int v90, unsigned char v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
unsigned char v94 = 3;
signed char v93 = 0;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
case 8: 
{
signed int v96;
unsigned int v97;
v96 = v90 + 0;
v97 = v27 (v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
