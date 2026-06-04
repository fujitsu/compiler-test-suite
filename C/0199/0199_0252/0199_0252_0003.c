#include <stdlib.h>
signed int v1 (signed char, unsigned int, signed char, signed short);
signed int (*v2) (signed char, unsigned int, signed char, signed short) = v1;
extern signed int v3 (signed char, signed short, unsigned int);
extern signed int (*v4) (signed char, signed short, unsigned int);
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int, signed char);
extern signed char (*v14) (unsigned int, signed char);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
unsigned short v17 (unsigned int, signed short, signed short, signed int);
unsigned short (*v18) (unsigned int, signed short, signed short, signed int) = v17;
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed short, signed char);
extern unsigned char (*v22) (signed short, signed char);
extern unsigned int v23 (signed int, unsigned char, signed char);
extern unsigned int (*v24) (signed int, unsigned char, signed char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (void);
extern void (*v28) (void);
signed short v29 (signed short, signed short, signed short);
signed short (*v30) (signed short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v81 = -4;
unsigned int v80 = 1U;
unsigned short v79 = 1;

signed short v29 (signed short v82, signed short v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 4U;
signed int v86 = -3;
unsigned int v85 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v88, signed short v89, signed short v90, signed int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
unsigned char v93 = 3;
unsigned short v92 = 0;
trace++;
switch (trace)
{
case 2: 
return v92;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 1;
unsigned short v97 = 7;
unsigned int v96 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v99, unsigned int v100, signed char v101, signed short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 7U;
signed char v104 = -1;
unsigned int v103 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed short v106;
unsigned short v107;
unsigned short v108;
signed short v109;
v106 = v102 - 0;
v107 = 6 + 3;
v108 = 0 + 3;
v109 = v5 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 4: 
return 1;
case 5: 
{
unsigned short v110;
unsigned char v111;
v110 = 0 - 1;
v111 = v11 (v110);
history[history_index++] = (int)v111;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
