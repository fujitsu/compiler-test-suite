#include <stdlib.h>
unsigned int v1 (signed short, signed short);
unsigned int (*v2) (signed short, signed short) = v1;
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
signed int v5 (unsigned char, unsigned int);
signed int (*v6) (unsigned char, unsigned int) = v5;
void v7 (unsigned int, signed char);
void (*v8) (unsigned int, signed char) = v7;
extern signed int v9 (unsigned int, unsigned short, signed int);
extern signed int (*v10) (unsigned int, unsigned short, signed int);
extern unsigned short v11 (signed char, signed char);
extern unsigned short (*v12) (signed char, signed char);
extern signed char v13 (unsigned int, signed int, signed short);
extern signed char (*v14) (unsigned int, signed int, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern void v19 (signed char, signed char, unsigned int, signed char);
extern void (*v20) (signed char, signed char, unsigned int, signed char);
extern signed char v21 (unsigned short, unsigned char, signed int, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, signed int, unsigned char);
extern signed char v23 (unsigned int, unsigned char, signed short, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short v25 (unsigned char, unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = 3;
unsigned short v81 = 3;
unsigned char v80 = 5;

void v7 (unsigned int v83, signed char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 3;
signed char v86 = -3;
unsigned char v85 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 2;
unsigned short v91 = 5;
signed short v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v93, signed short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 7U;
signed char v96 = -1;
unsigned short v95 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v98;
v98 = 4 + 6;
v27 (v98);
}
break;
case 4: 
return v97;
case 5: 
{
unsigned short v99;
unsigned char v100;
signed int v101;
unsigned char v102;
signed char v103;
v99 = 4 + v95;
v100 = 1 + 1;
v101 = 2 - 0;
v102 = 6 - 5;
v103 = v21 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 7: 
{
unsigned short v104;
unsigned char v105;
signed int v106;
unsigned char v107;
signed char v108;
v104 = 6 + v95;
v105 = 7 + 1;
v106 = 2 - 2;
v107 = 1 - 7;
v108 = v21 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 9: 
{
signed char v109;
signed char v110;
unsigned short v111;
v109 = -3 - v96;
v110 = 2 - v96;
v111 = v11 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 13: 
return v97;
default: abort ();
}
}
}
}
