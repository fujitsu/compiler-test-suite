#include <stdlib.h>
extern void v1 (signed int, signed short, signed char);
extern void (*v2) (signed int, signed short, signed char);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned short, signed int, unsigned char);
extern unsigned char (*v6) (unsigned short, signed int, unsigned char);
unsigned short v7 (signed short, signed int);
unsigned short (*v8) (signed short, signed int) = v7;
extern signed int v9 (signed char, unsigned char, unsigned int, unsigned int);
extern signed int (*v10) (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, unsigned short);
extern unsigned short (*v14) (unsigned short, unsigned short);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern unsigned short v17 (signed int, signed int);
extern unsigned short (*v18) (signed int, signed int);
signed short v19 (unsigned short, signed int, unsigned char, unsigned short);
signed short (*v20) (unsigned short, signed int, unsigned char, unsigned short) = v19;
signed int v21 (unsigned int, unsigned short, signed int, unsigned short);
signed int (*v22) (unsigned int, unsigned short, signed int, unsigned short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = 3;
signed char v65 = 1;
signed short v64 = 3;

signed int v21 (unsigned int v67, unsigned short v68, signed int v69, unsigned short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 1;
signed int v72 = 1;
signed short v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v74, signed int v75, unsigned char v76, unsigned short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 7;
signed int v79 = 2;
signed int v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v81, signed int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -4;
signed short v84 = -1;
signed char v83 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed char v86;
unsigned char v87;
unsigned int v88;
unsigned int v89;
signed int v90;
v86 = 3 - -2;
v87 = 1 - 4;
v88 = 6U - 7U;
v89 = 0U - 0U;
v90 = v9 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 9: 
{
unsigned char v91;
v91 = v27 ();
history[history_index++] = (int)v91;
}
break;
case 11: 
return 7;
case 14: 
return 0;
default: abort ();
}
}
}
}
