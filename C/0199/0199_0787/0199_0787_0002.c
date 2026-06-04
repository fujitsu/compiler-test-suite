#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
unsigned short v3 (unsigned char, unsigned char);
unsigned short (*v4) (unsigned char, unsigned char) = v3;
extern unsigned int v5 (unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned char, unsigned short, signed short);
unsigned char v7 (unsigned int, unsigned short, signed char);
unsigned char (*v8) (unsigned int, unsigned short, signed char) = v7;
extern signed char v9 (signed short, signed int, signed char);
extern signed char (*v10) (signed short, signed int, signed char);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
void v13 (unsigned short, unsigned int, signed char, signed char);
void (*v14) (unsigned short, unsigned int, signed char, signed char) = v13;
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (unsigned int, unsigned short, signed char);
extern void (*v18) (unsigned int, unsigned short, signed char);
extern unsigned char v19 (signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed int, unsigned short, unsigned char);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 6U;
unsigned short v61 = 1;
signed short v60 = 2;

void v13 (unsigned short v63, unsigned int v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 5;
unsigned short v68 = 4;
unsigned short v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v70, unsigned short v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = 2;
unsigned char v74 = 2;
unsigned char v73 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v76, unsigned char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 0;
unsigned int v79 = 3U;
signed int v78 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 5U;
unsigned int v83 = 0U;
signed int v82 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v85;
unsigned short v86;
signed char v87;
v85 = v81 - 0U;
v86 = 2 - 1;
v87 = -3 - 3;
v17 (v85, v86, v87);
}
break;
case 2: 
{
signed short v88;
unsigned char v89;
signed int v90;
v88 = 1 - 2;
v89 = 3 - 1;
v90 = v25 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 4: 
{
unsigned int v91;
unsigned short v92;
signed char v93;
v91 = v81 - v84;
v92 = 1 - 1;
v93 = -2 + 3;
v17 (v91, v92, v93);
}
break;
case 6: 
{
signed int v94;
unsigned short v95;
unsigned char v96;
unsigned char v97;
v94 = v82 + v82;
v95 = 1 + 6;
v96 = 6 - 2;
v97 = v19 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
