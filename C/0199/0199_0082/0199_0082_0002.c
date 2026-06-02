#include <stdlib.h>
unsigned short v3 (signed int, signed short, unsigned char);
unsigned short (*v4) (signed int, signed short, unsigned char) = v3;
extern unsigned char v5 (signed int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int);
signed int v7 (signed char);
signed int (*v8) (signed char) = v7;
extern unsigned int v9 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char, unsigned short);
extern signed int v11 (signed char, unsigned int, signed char);
extern signed int (*v12) (signed char, unsigned int, signed char);
extern signed int v13 (signed int, unsigned char, unsigned char, signed int);
extern signed int (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
unsigned short v17 (unsigned int, unsigned char);
unsigned short (*v18) (unsigned int, unsigned char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed int v23 (unsigned short, unsigned char, unsigned char);
extern signed int (*v24) (unsigned short, unsigned char, unsigned char);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern unsigned int v27 (signed int, signed short, signed int, signed short);
extern unsigned int (*v28) (signed int, signed short, signed int, signed short);
signed short v29 (signed short);
signed short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 0U;
unsigned char v80 = 2;
signed short v79 = 3;

signed short v29 (signed short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 7;
unsigned short v84 = 4;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v86, unsigned char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 1U;
signed int v89 = -1;
signed short v88 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 0U;
signed int v93 = -3;
signed short v92 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v95;
unsigned char v96;
unsigned char v97;
signed int v98;
v95 = 5 - 5;
v96 = 7 + 0;
v97 = 5 + 4;
v98 = v23 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 3: 
{
unsigned int v99;
v99 = v21 ();
history[history_index++] = (int)v99;
}
break;
case 7: 
{
unsigned short v100;
unsigned char v101;
unsigned char v102;
signed int v103;
v100 = 1 - 5;
v101 = 2 - 7;
v102 = 5 + 1;
v103 = v23 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
{
unsigned short v104;
unsigned char v105;
unsigned char v106;
signed int v107;
v104 = 2 - 7;
v105 = 7 + 4;
v106 = 7 + 0;
v107 = v23 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return v93;
default: abort ();
}
}
}
}

unsigned short v3 (signed int v108, signed short v109, unsigned char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 3;
unsigned char v112 = 2;
signed char v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
