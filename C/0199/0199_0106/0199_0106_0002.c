#include <stdlib.h>
signed int v1 (unsigned short, signed char);
signed int (*v2) (unsigned short, signed char) = v1;
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed int v5 (unsigned short, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned short, signed short, unsigned char, signed short);
extern signed short v7 (unsigned char, unsigned char);
extern signed short (*v8) (unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
void v11 (signed short, unsigned int);
void (*v12) (signed short, unsigned int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v17 (unsigned short, unsigned short, signed short);
extern void (*v18) (unsigned short, unsigned short, signed short);
extern signed int v19 (signed char, signed int, unsigned char);
extern signed int (*v20) (signed char, signed int, unsigned char);
extern unsigned char v21 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned char (*v22) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
signed char v25 (signed char, unsigned int, signed short, signed char);
signed char (*v26) (signed char, unsigned int, signed short, signed char) = v25;
unsigned int v27 (signed int, signed char, unsigned char);
unsigned int (*v28) (signed int, signed char, unsigned char) = v27;
extern unsigned char v29 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = -1;
unsigned int v62 = 5U;
signed short v61 = 2;

unsigned int v27 (signed int v64, signed char v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = -1;
unsigned char v68 = 3;
unsigned char v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (signed char v70, unsigned int v71, signed short v72, signed char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 2;
signed short v75 = -2;
signed char v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -2;
signed int v80 = -3;
unsigned short v79 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v82, signed char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -4;
unsigned int v85 = 4U;
unsigned short v84 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v87;
signed int v88;
unsigned char v89;
signed int v90;
v87 = 1 - v83;
v88 = -3 + -4;
v89 = 5 + 0;
v90 = v19 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 2: 
{
unsigned short v91;
unsigned short v92;
unsigned int v93;
signed char v94;
unsigned char v95;
v91 = 4 + v82;
v92 = 6 + 5;
v93 = v85 - 6U;
v94 = v83 + 0;
v95 = v21 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
unsigned short v96;
unsigned int v97;
unsigned char v98;
unsigned char v99;
v96 = v84 - v82;
v97 = v85 + v85;
v98 = 7 + 1;
v99 = v29 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
unsigned short v100;
signed int v101;
v100 = 3 + v82;
v101 = v86 + v86;
v3 (v100, v101);
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
