#include <stdlib.h>
unsigned int v1 (unsigned int, signed char, signed char);
unsigned int (*v2) (unsigned int, signed char, signed char) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned short, signed char, unsigned int, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned int, unsigned short);
extern void v9 (unsigned short, signed int, unsigned short, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short, unsigned short);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
extern signed short v15 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short, signed short, unsigned short);
extern unsigned int v17 (signed char, signed short, signed char, signed int);
extern unsigned int (*v18) (signed char, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned int, unsigned int, signed short);
extern signed int (*v20) (signed short, unsigned int, unsigned int, signed short);
extern unsigned short v21 (unsigned char, signed char);
extern unsigned short (*v22) (unsigned char, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern void v27 (unsigned int, signed short, unsigned int);
extern void (*v28) (unsigned int, signed short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v78 = 1;
unsigned char v77 = 2;
signed int v76 = 1;

unsigned short v25 (void)
{
{
for (;;) {
unsigned char v81 = 0;
unsigned short v80 = 1;
signed char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v82, signed char v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 3;
signed int v86 = 0;
signed short v85 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v88;
signed int v89;
unsigned short v90;
unsigned short v91;
v88 = 1 + 1;
v89 = v86 - v86;
v90 = 4 - 4;
v91 = 0 + 7;
v9 (v88, v89, v90, v91);
}
break;
case 6: 
{
unsigned short v92;
unsigned short v93;
v92 = 2 - 4;
v93 = 0 + 4;
v11 (v92, v93);
}
break;
case 8: 
{
unsigned short v94;
unsigned short v95;
v94 = 5 + 3;
v95 = 7 - 0;
v11 (v94, v95);
}
break;
case 10: 
{
unsigned short v96;
signed char v97;
unsigned int v98;
unsigned short v99;
signed short v100;
v96 = 5 - 4;
v97 = v84 - v87;
v98 = v82 + 2U;
v99 = 5 - 2;
v100 = v7 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 12: 
return v82;
default: abort ();
}
}
}
}
