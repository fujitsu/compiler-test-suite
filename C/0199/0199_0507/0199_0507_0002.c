#include <stdlib.h>
extern void v1 (unsigned int, signed short, signed int, signed int);
extern void (*v2) (unsigned int, signed short, signed int, signed int);
extern unsigned short v5 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v6) (signed int, unsigned int, signed char, signed int);
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern void v9 (unsigned char, unsigned short, signed short, signed int);
extern void (*v10) (unsigned char, unsigned short, signed short, signed int);
extern signed int v11 (unsigned short, signed int, signed int, signed int);
extern signed int (*v12) (unsigned short, signed int, signed int, signed int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed int);
extern signed int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned char, signed int, unsigned short, unsigned short);
extern signed char (*v22) (unsigned char, signed int, unsigned short, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern signed int v29 (signed short, unsigned int, signed short, signed char);
extern signed int (*v30) (signed short, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 2;
signed short v84 = -3;
unsigned int v83 = 6U;

signed int v23 (void)
{
{
for (;;) {
signed short v88 = -3;
unsigned char v87 = 2;
signed char v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 6U;
signed int v91 = -2;
unsigned int v90 = 6U;
trace++;
switch (trace)
{
case 8: 
{
signed short v93;
unsigned int v94;
signed short v95;
signed char v96;
signed int v97;
v93 = -3 - -4;
v94 = v92 + v90;
v95 = -1 + -3;
v96 = 2 + -2;
v97 = v29 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 10: 
{
signed short v98;
unsigned int v99;
signed short v100;
signed char v101;
signed int v102;
v98 = 0 + 3;
v99 = 4U + v92;
v100 = -3 - v89;
v101 = 0 - 0;
v102 = v29 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return v89;
default: abort ();
}
}
}
}
