#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned char v9 (unsigned int, unsigned short, signed char);
extern unsigned char (*v10) (unsigned int, unsigned short, signed char);
extern void v11 (signed short, unsigned char, unsigned int, unsigned int);
extern void (*v12) (signed short, unsigned char, unsigned int, unsigned int);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
void v15 (signed int, unsigned short, unsigned short);
void (*v16) (signed int, unsigned short, unsigned short) = v15;
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
extern signed short v19 (signed int, unsigned char, signed char, signed int);
extern signed short (*v20) (signed int, unsigned char, signed char, signed int);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
signed char v25 (signed short, signed short, unsigned int, signed int);
signed char (*v26) (signed short, signed short, unsigned int, signed int) = v25;
extern unsigned short v27 (signed char, signed int, signed short, unsigned char);
extern unsigned short (*v28) (signed char, signed int, signed short, unsigned char);
unsigned char v29 (signed short, signed short);
unsigned char (*v30) (signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 6U;
signed short v64 = 2;
unsigned int v63 = 7U;

unsigned char v29 (signed short v66, signed short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -4;
signed int v69 = 2;
signed char v68 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v71;
unsigned int v72;
unsigned int v73;
v71 = v68 + v68;
v72 = 1U + 1U;
v73 = v17 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 5: 
{
signed char v74;
unsigned int v75;
unsigned int v76;
v74 = -3 - 0;
v75 = 1U + 1U;
v76 = v17 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 7: 
{
signed char v77;
unsigned int v78;
unsigned int v79;
v77 = v68 + 0;
v78 = 0U + 4U;
v79 = v17 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
signed char v80;
unsigned int v81;
unsigned int v82;
v80 = 0 + -2;
v81 = 0U + 0U;
v82 = v17 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed char v25 (signed short v83, signed short v84, unsigned int v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 3;
signed char v88 = -2;
signed short v87 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v90, unsigned short v91, unsigned short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 0U;
unsigned char v94 = 7;
signed char v93 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 1;
unsigned short v98 = 4;
unsigned char v97 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v100;
unsigned char v101;
signed char v102;
signed int v103;
signed short v104;
v100 = 0 - 1;
v101 = 7 + v97;
v102 = -3 + -1;
v103 = 1 - 0;
v104 = v19 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
