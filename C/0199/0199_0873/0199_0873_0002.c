#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern unsigned char v3 (signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned char, unsigned int);
extern signed int v5 (unsigned char, signed char);
extern signed int (*v6) (unsigned char, signed char);
extern signed char v7 (unsigned char, signed short, signed char, signed short);
extern signed char (*v8) (unsigned char, signed short, signed char, signed short);
extern unsigned short v9 (signed int, signed char, unsigned int, signed short);
extern unsigned short (*v10) (signed int, signed char, unsigned int, signed short);
extern unsigned int v11 (unsigned short, signed short, signed short);
extern unsigned int (*v12) (unsigned short, signed short, signed short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned int v15 (unsigned int, signed int, signed char);
extern unsigned int (*v16) (unsigned int, signed int, signed char);
signed char v17 (unsigned short, signed int);
signed char (*v18) (unsigned short, signed int) = v17;
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
signed int v21 (unsigned char, unsigned char, signed int);
signed int (*v22) (unsigned char, unsigned char, signed int) = v21;
extern signed short v23 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, signed char, unsigned short);
extern signed char v25 (unsigned short, signed short, signed int);
extern signed char (*v26) (unsigned short, signed short, signed int);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned char v29 (signed int, signed short, signed short);
extern unsigned char (*v30) (signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 5;
signed char v81 = -3;
signed char v80 = 3;

signed int v21 (unsigned char v83, unsigned char v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -3;
signed char v87 = -3;
unsigned int v86 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v89, signed int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 1;
signed short v92 = -2;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned short v96 = 5;
signed char v95 = -1;
signed int v94 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v97;
signed short v98;
signed short v99;
unsigned char v100;
v97 = v94 - -4;
v98 = -1 - -2;
v99 = -2 - -4;
v100 = v29 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 3: 
{
signed int v101;
signed short v102;
signed short v103;
unsigned char v104;
v101 = v94 + 1;
v102 = -2 - 1;
v103 = -1 + 2;
v104 = v29 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 5: 
return 7;
case 10: 
{
signed int v105;
signed short v106;
signed short v107;
unsigned char v108;
v105 = v94 + 1;
v106 = 2 - -2;
v107 = -3 + -3;
v108 = v29 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
