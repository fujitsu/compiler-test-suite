#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
extern unsigned short v7 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned short v15 (unsigned char, signed int, signed char, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned short, unsigned int);
extern void (*v20) (unsigned short, unsigned int);
extern unsigned char v21 (signed short, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed short, unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v84 = 3;
signed short v83 = 1;
signed short v82 = -3;

signed int v29 (void)
{
{
for (;;) {
unsigned int v87 = 7U;
unsigned short v86 = 5;
signed short v85 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v88;
v88 = -3 - -4;
v3 (v88);
}
break;
case 7: 
{
signed int v89;
v89 = v29 ();
history[history_index++] = (int)v89;
}
break;
case 8: 
{
signed int v90;
v90 = -4 - 0;
v3 (v90);
}
break;
case 10: 
{
signed int v91;
v91 = 0 + 2;
v3 (v91);
}
break;
case 12: 
return -1;
case 13: 
return 2;
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned int v94 = 2U;
unsigned char v93 = 6;
signed short v92 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v95;
v95 = 1 - -2;
v3 (v95);
}
break;
case 2: 
{
unsigned char v96;
unsigned int v97;
unsigned short v98;
v96 = v93 + 2;
v97 = v94 - v94;
v98 = v11 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
