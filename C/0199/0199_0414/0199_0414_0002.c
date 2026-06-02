#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned short, signed int, signed char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, signed char, unsigned char);
extern unsigned short v5 (unsigned short, signed int);
extern unsigned short (*v6) (unsigned short, signed int);
extern signed int v7 (unsigned char, signed int, signed int, unsigned int);
extern signed int (*v8) (unsigned char, signed int, signed int, unsigned int);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern unsigned int v11 (unsigned int, signed short, signed short);
extern unsigned int (*v12) (unsigned int, signed short, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, signed short, signed short, signed short);
extern signed short (*v18) (unsigned int, signed short, signed short, signed short);
extern unsigned int v19 (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned char v21 (signed char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned int, signed char);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = 1;
signed int v78 = 1;
unsigned char v77 = 5;

signed char v9 (unsigned int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 1U;
signed char v82 = 0;
unsigned int v81 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed char v84;
unsigned int v85;
unsigned int v86;
signed char v87;
unsigned char v88;
v84 = 3 + 2;
v85 = v80 - v83;
v86 = v83 - v80;
v87 = -4 - 1;
v88 = v21 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 3: 
{
signed char v89;
unsigned int v90;
unsigned int v91;
signed char v92;
unsigned char v93;
v89 = 0 + -4;
v90 = 4U - v83;
v91 = v81 + 4U;
v92 = v82 + v82;
v93 = v21 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
return v82;
case 7: 
{
unsigned short v94;
unsigned short v95;
signed short v96;
unsigned int v97;
unsigned int v98;
v94 = 7 - 2;
v95 = 6 - 6;
v96 = 2 + -2;
v97 = v80 + 7U;
v98 = v19 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 13: 
return v82;
default: abort ();
}
}
}
}
