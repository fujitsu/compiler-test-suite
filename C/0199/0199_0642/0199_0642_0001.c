#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned int, unsigned char);
unsigned char (*v2) (unsigned short, unsigned int, unsigned char) = v1;
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed int v7 (unsigned short, unsigned char, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed int, signed int, unsigned char, signed short);
extern unsigned char (*v12) (signed int, signed int, unsigned char, signed short);
extern void v13 (unsigned int, signed short, signed short, signed char);
extern void (*v14) (unsigned int, signed short, signed short, signed char);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed char v17 (unsigned short, signed int, unsigned int);
extern signed char (*v18) (unsigned short, signed int, unsigned int);
signed char v19 (unsigned char, unsigned int, signed int, unsigned int);
signed char (*v20) (unsigned char, unsigned int, signed int, unsigned int) = v19;
extern signed int v21 (signed char, unsigned int, signed int);
extern signed int (*v22) (signed char, unsigned int, signed int);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v68 = 4U;
signed short v67 = -2;
signed short v66 = -2;

signed char v27 (void)
{
{
for (;;) {
signed char v71 = -3;
signed int v70 = -4;
signed char v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v72, unsigned int v73, signed int v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 1U;
unsigned short v77 = 3;
signed int v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v79, unsigned int v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -1;
unsigned int v83 = 1U;
signed int v82 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v85;
signed short v86;
signed char v87;
v85 = -4 - v84;
v86 = -4 - v84;
v87 = v15 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 2: 
{
signed short v88;
signed short v89;
signed char v90;
v88 = v84 - -2;
v89 = -2 + 2;
v90 = v15 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 4: 
{
signed short v91;
signed short v92;
signed char v93;
v91 = v84 + -4;
v92 = -4 + -4;
v93 = v15 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 6: 
{
signed char v94;
v94 = v9 ();
history[history_index++] = (int)v94;
}
break;
case 8: 
{
unsigned short v95;
unsigned char v96;
unsigned char v97;
signed int v98;
v95 = v79 + v79;
v96 = v81 + 0;
v97 = 2 - 6;
v98 = v7 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return v81;
default: abort ();
}
}
}
}
