#include <stdlib.h>
signed char v3 (signed int, unsigned char, unsigned char);
signed char (*v4) (signed int, unsigned char, unsigned char) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed char v7 (unsigned short, signed int);
extern signed char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
extern signed char v21 (signed int, signed short, signed int, signed int);
extern signed char (*v22) (signed int, signed short, signed int, signed int);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (signed int, unsigned short);
extern unsigned short (*v28) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v85 = 7;
signed short v84 = -1;
signed int v83 = -4;

void v17 (void)
{
{
for (;;) {
signed char v88 = 1;
signed int v87 = -1;
unsigned char v86 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v89;
v89 = v25 ();
history[history_index++] = (int)v89;
}
break;
case 3: 
{
signed short v90;
v90 = v25 ();
history[history_index++] = (int)v90;
}
break;
case 5: 
{
unsigned short v91;
signed char v92;
v91 = 1 - 3;
v92 = v23 (v91);
history[history_index++] = (int)v92;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed char v3 (signed int v93, unsigned char v94, unsigned char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 0U;
signed short v97 = 3;
signed char v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
