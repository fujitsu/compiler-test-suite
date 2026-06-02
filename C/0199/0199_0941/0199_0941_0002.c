#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned short v7 (signed char, signed int, unsigned char, unsigned short);
extern unsigned short (*v8) (signed char, signed int, unsigned char, unsigned short);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
static signed short v15 (unsigned char, unsigned short);
static signed short (*v16) (unsigned char, unsigned short) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, unsigned char);
extern signed int v21 (unsigned int, signed short);
extern signed int (*v22) (unsigned int, signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern unsigned int v25 (unsigned char, signed char);
extern unsigned int (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned short, unsigned short);
extern signed short (*v28) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v84 = -1;
signed char v83 = 0;
unsigned short v82 = 3;

static signed short v15 (unsigned char v85, unsigned short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
unsigned short v88 = 5;
unsigned char v87 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v90;
signed short v91;
signed int v92;
v90 = 5U - 7U;
v91 = 0 + -2;
v92 = v21 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 3: 
return -2;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v95 = 2;
unsigned int v94 = 0U;
signed char v93 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v96;
unsigned short v97;
signed short v98;
v96 = 7 - 3;
v97 = 3 - 0;
v98 = v15 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 4: 
{
signed int v99;
v99 = v17 ();
history[history_index++] = (int)v99;
}
break;
case 16: 
return -4;
default: abort ();
}
}
}
}
