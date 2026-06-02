#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned int, unsigned short, unsigned int);
extern unsigned char v3 (signed int, unsigned char, signed short);
extern unsigned char (*v4) (signed int, unsigned char, signed short);
extern void v5 (signed char, signed int, unsigned int, signed int);
extern void (*v6) (signed char, signed int, unsigned int, signed int);
extern signed short v7 (signed int, unsigned char, signed char);
extern signed short (*v8) (signed int, unsigned char, signed char);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
signed short v11 (unsigned short);
signed short (*v12) (unsigned short) = v11;
extern signed char v13 (signed short, signed short, unsigned short);
extern signed char (*v14) (signed short, signed short, unsigned short);
extern void v15 (signed int, signed char, signed short, unsigned int);
extern void (*v16) (signed int, signed char, signed short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned int);
extern unsigned int (*v20) (signed char, signed int, unsigned int);
void v21 (unsigned int, unsigned short);
void (*v22) (unsigned int, unsigned short) = v21;
extern signed int v23 (signed char, signed short, signed char);
extern signed int (*v24) (signed char, signed short, signed char);
extern signed short v25 (signed char, signed char, unsigned short);
extern signed short (*v26) (signed char, signed char, unsigned short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
signed char v29 (signed short, unsigned char, signed int, signed int);
signed char (*v30) (signed short, unsigned char, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = -4;
unsigned int v72 = 5U;
signed int v71 = 2;

signed char v29 (signed short v74, unsigned char v75, signed int v76, signed int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -3;
unsigned int v79 = 6U;
signed short v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v81, unsigned short v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
unsigned int v84 = 0U;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed char v86;
signed short v87;
signed char v88;
signed int v89;
v86 = -3 - -1;
v87 = 1 - -1;
v88 = -2 + -4;
v89 = v23 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 3: 
{
signed char v90;
signed short v91;
signed char v92;
signed int v93;
v90 = -4 - -2;
v91 = 2 + -2;
v92 = -2 - 3;
v93 = v23 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
{
signed char v94;
signed short v95;
signed char v96;
signed int v97;
v94 = -3 + -2;
v95 = 1 - -1;
v96 = 1 - -2;
v97 = v23 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}

signed short v11 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -4;
unsigned short v100 = 4;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
