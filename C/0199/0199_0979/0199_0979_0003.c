#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
unsigned int v3 (unsigned int, signed int, signed char, signed int);
unsigned int (*v4) (unsigned int, signed int, signed char, signed int) = v3;
extern signed int v5 (signed int, signed short);
extern signed int (*v6) (signed int, signed short);
extern unsigned int v7 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, signed short, unsigned int, unsigned int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned char v11 (signed char, unsigned char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char, unsigned char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern unsigned char v15 (unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed char, signed char, unsigned char, signed int);
extern signed char (*v18) (signed char, signed char, unsigned char, signed int);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern void v21 (signed int, signed short, signed int);
extern void (*v22) (signed int, signed short, signed int);
unsigned short v23 (unsigned int, signed char, unsigned int);
unsigned short (*v24) (unsigned int, signed char, unsigned int) = v23;
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = -1;
signed int v78 = -3;
unsigned char v77 = 6;

unsigned short v29 (unsigned short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -3;
signed short v82 = 1;
unsigned char v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -1;
unsigned char v86 = 3;
signed short v85 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v88, signed char v89, unsigned int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 3;
unsigned int v92 = 0U;
unsigned short v91 = 3;
trace++;
switch (trace)
{
case 11: 
return v91;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v94, signed int v95, signed char v96, signed int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 2;
signed int v99 = 3;
signed char v98 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v101;
unsigned char v102;
v101 = 7 + 3;
v102 = v27 (v101);
history[history_index++] = (int)v102;
}
break;
case 3: 
{
unsigned char v103;
unsigned char v104;
v103 = 3 + 7;
v104 = v27 (v103);
history[history_index++] = (int)v104;
}
break;
case 5: 
{
signed char v105;
unsigned char v106;
v105 = v98 + v96;
v106 = v9 (v105);
history[history_index++] = (int)v106;
}
break;
case 7: 
{
unsigned char v107;
unsigned char v108;
v107 = 4 + 2;
v108 = v27 (v107);
history[history_index++] = (int)v108;
}
break;
case 9: 
{
signed char v109;
signed char v110;
unsigned char v111;
signed int v112;
signed char v113;
v109 = v98 - v98;
v110 = -1 + v98;
v111 = 7 - 7;
v112 = v99 + v97;
v113 = v17 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
