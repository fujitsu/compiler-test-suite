#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern void v3 (signed char, signed int, unsigned short, unsigned int);
extern void (*v4) (signed char, signed int, unsigned short, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern void v11 (unsigned int, signed char, signed int, signed char);
extern void (*v12) (unsigned int, signed char, signed int, signed char);
static unsigned int v13 (void);
static unsigned int (*v14) (void) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned char, signed int);
extern signed short (*v18) (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
extern unsigned int v23 (unsigned char, signed char);
extern unsigned int (*v24) (unsigned char, signed char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 6U;
signed int v75 = 1;
signed int v74 = -2;

static unsigned int v13 (void)
{
{
for (;;) {
signed int v79 = -4;
unsigned int v78 = 7U;
signed short v77 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed short v80;
signed short v81;
signed int v82;
v80 = v77 - v77;
v81 = 2 - -1;
v82 = v25 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 5: 
{
signed short v83;
signed short v84;
signed int v85;
v83 = v77 - v77;
v84 = v77 - -2;
v85 = v25 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 7: 
{
unsigned short v86;
unsigned char v87;
v86 = 4 - 3;
v87 = v27 (v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
return 1U;
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed short v90 = -3;
unsigned int v89 = 0U;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed char v91;
signed int v92;
unsigned short v93;
unsigned int v94;
v91 = -2 - 0;
v92 = -2 + -1;
v93 = 0 + 6;
v94 = v89 - 4U;
v3 (v91, v92, v93, v94);
}
break;
case 2: 
{
unsigned int v95;
v95 = v13 ();
history[history_index++] = (int)v95;
}
break;
case 10: 
{
unsigned int v96;
signed char v97;
signed int v98;
signed char v99;
v96 = v89 + v89;
v97 = 3 - 1;
v98 = 3 - 1;
v99 = -4 + 2;
v11 (v96, v97, v98, v99);
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
