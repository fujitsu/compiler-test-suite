#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern signed int v3 (unsigned char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned int);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
extern signed int v7 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v8) (signed char, signed char, unsigned short, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned char);
extern unsigned int (*v24) (signed int, unsigned char, unsigned char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
unsigned char v27 (signed short, unsigned char);
unsigned char (*v28) (signed short, unsigned char) = v27;
extern signed short v29 (signed short, signed char, signed int);
extern signed short (*v30) (signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v82 = -4;
signed short v81 = 2;
unsigned char v80 = 7;

unsigned char v27 (signed short v83, unsigned char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 6;
signed int v86 = 3;
signed char v85 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed char v88;
v88 = v21 ();
history[history_index++] = (int)v88;
}
break;
case 11: 
return 6;
case 14: 
return v84;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed short v91 = -1;
signed int v90 = 0;
unsigned char v89 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed short v92;
unsigned char v93;
unsigned char v94;
v92 = 2 - v91;
v93 = v89 + 1;
v94 = v27 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 5: 
{
signed short v95;
signed char v96;
signed int v97;
signed short v98;
v95 = 1 - -1;
v96 = -1 + -4;
v97 = -3 + 0;
v98 = v29 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 7: 
return v89;
case 9: 
return v89;
case 15: 
return 1;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed short v101 = 3;
signed short v100 = -3;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
