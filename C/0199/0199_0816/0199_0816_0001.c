#include <stdlib.h>
signed short v1 (signed short);
signed short (*v2) (signed short) = v1;
extern void v3 (signed short, signed char, unsigned int);
extern void (*v4) (signed short, signed char, unsigned int);
void v5 (unsigned int, unsigned char, signed int, unsigned short);
void (*v6) (unsigned int, unsigned char, signed int, unsigned short) = v5;
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v10) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int, signed short, signed char);
extern void (*v14) (signed int, signed short, signed char);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern void v19 (unsigned int, signed int, signed short);
extern void (*v20) (unsigned int, signed int, signed short);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed int v29 (signed char, unsigned int, unsigned short);
extern signed int (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v76 = 2;
signed short v75 = 2;
signed int v74 = -2;

void v5 (unsigned int v77, unsigned char v78, signed int v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 7U;
unsigned short v82 = 0;
unsigned short v81 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 6;
unsigned char v86 = 4;
signed short v85 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v88;
signed char v89;
v88 = 3 + 0;
v89 = v17 (v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed short v90;
signed char v91;
unsigned int v92;
v90 = v85 - v85;
v91 = -3 - -3;
v92 = 2U - 4U;
v3 (v90, v91, v92);
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
