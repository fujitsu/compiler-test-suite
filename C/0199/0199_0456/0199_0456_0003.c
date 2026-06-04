#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (void);
signed short (*v4) (void) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed char v7 (unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, signed short);
extern unsigned short (*v10) (unsigned int, unsigned char, signed short);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern void v13 (signed int);
extern void (*v14) (signed int);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned short v19 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed short, unsigned char, unsigned short, unsigned short);
extern signed int v21 (signed short, unsigned int, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned int, unsigned char, signed int);
extern signed int v23 (signed int, unsigned char, signed short, signed int);
extern signed int (*v24) (signed int, unsigned char, signed short, signed int);
extern unsigned char v25 (signed short, signed short, signed int);
extern unsigned char (*v26) (signed short, signed short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v80 = -4;
signed short v79 = -2;
signed int v78 = -4;

signed char v15 (void)
{
{
for (;;) {
unsigned char v83 = 5;
signed short v82 = 1;
unsigned char v81 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed int v84;
unsigned char v85;
signed short v86;
signed int v87;
signed int v88;
v84 = -2 - 1;
v85 = 6 - v81;
v86 = v82 + v82;
v87 = -1 + -2;
v88 = v23 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 3: 
{
signed int v89;
unsigned char v90;
signed short v91;
signed int v92;
signed int v93;
v89 = -2 + 0;
v90 = v81 - v83;
v91 = v82 - v82;
v92 = 1 + 2;
v93 = v23 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
{
signed int v94;
unsigned char v95;
signed short v96;
signed int v97;
signed int v98;
v94 = 2 + 1;
v95 = 3 - v81;
v96 = 0 + v82;
v97 = 0 - -4;
v98 = v23 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 7: 
return -2;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed int v101 = 0;
signed int v100 = -4;
signed int v99 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed char v104 = 3;
unsigned char v103 = 0;
unsigned char v102 = 4;
trace++;
switch (trace)
{
case 9: 
{
signed char v105;
unsigned char v106;
v105 = -4 + v104;
v106 = v11 (v105);
history[history_index++] = (int)v106;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
