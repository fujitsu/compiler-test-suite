#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed short, signed char, signed char, signed short);
extern signed int (*v6) (signed short, signed char, signed char, signed short);
unsigned int v7 (unsigned int, signed short);
unsigned int (*v8) (unsigned int, signed short) = v7;
extern void v9 (unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned short);
signed char v11 (unsigned int);
signed char (*v12) (unsigned int) = v11;
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, signed int, signed char, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
unsigned char v23 (signed char, signed short);
unsigned char (*v24) (signed char, signed short) = v23;
extern signed char v25 (unsigned int, signed char, signed char);
extern signed char (*v26) (unsigned int, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed short, unsigned char, signed short);
extern signed char (*v30) (unsigned int, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = -1;
unsigned short v74 = 3;
unsigned int v73 = 3U;

unsigned char v23 (signed char v76, signed short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 4;
signed short v79 = 0;
unsigned int v78 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
signed short v83 = -2;
unsigned short v82 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v85;
signed short v86;
unsigned char v87;
signed short v88;
signed char v89;
v85 = 0U + v81;
v86 = v83 - v83;
v87 = 0 + 7;
v88 = -1 + -3;
v89 = v29 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 3: 
{
unsigned int v90;
signed short v91;
unsigned char v92;
signed short v93;
signed char v94;
v90 = v84 + v84;
v91 = v83 + v83;
v92 = 2 + 4;
v93 = v83 - v83;
v94 = v29 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 5: 
{
signed int v95;
v95 = v27 ();
history[history_index++] = (int)v95;
}
break;
case 7: 
return -2;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 1;
unsigned short v99 = 7;
unsigned int v98 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
