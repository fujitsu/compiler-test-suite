#include <stdlib.h>
extern unsigned char v3 (signed int, signed char);
extern unsigned char (*v4) (signed int, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned short, signed short);
extern unsigned char (*v8) (unsigned short, signed short);
extern signed char v9 (signed short, signed char, signed int, unsigned int);
extern signed char (*v10) (signed short, signed char, signed int, unsigned int);
signed int v11 (unsigned short, signed char, signed int);
signed int (*v12) (unsigned short, signed char, signed int) = v11;
extern signed short v13 (signed char, signed short);
extern signed short (*v14) (signed char, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed short v17 (unsigned int, signed char);
extern signed short (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed short, unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (signed short, unsigned short, signed short, unsigned short);
unsigned short v21 (unsigned char, signed int, signed short);
unsigned short (*v22) (unsigned char, signed int, signed short) = v21;
signed short v23 (signed int, unsigned char, signed short);
signed short (*v24) (signed int, unsigned char, signed short) = v23;
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
extern void v27 (signed short, unsigned short, signed char, signed short);
extern void (*v28) (signed short, unsigned short, signed char, signed short);
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 0U;
signed short v75 = -4;
unsigned char v74 = 1;

signed short v23 (signed int v77, unsigned char v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 7;
unsigned char v81 = 5;
signed int v80 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v83;
unsigned short v84;
signed char v85;
signed short v86;
v83 = v79 + -2;
v84 = v82 - 5;
v85 = 3 + 2;
v86 = -1 + -4;
v27 (v83, v84, v85, v86);
}
break;
case 8: 
{
signed short v87;
unsigned short v88;
signed char v89;
signed short v90;
v87 = -1 + v79;
v88 = v82 - 1;
v89 = 1 - 1;
v90 = v79 + v79;
v27 (v87, v88, v89, v90);
}
break;
case 10: 
{
signed short v91;
unsigned short v92;
signed char v93;
signed short v94;
v91 = v79 + 0;
v92 = 5 + 0;
v93 = -3 + 0;
v94 = v79 + 0;
v27 (v91, v92, v93, v94);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v95, signed int v96, signed short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 4;
unsigned int v99 = 1U;
unsigned char v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v101, signed char v102, signed int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 1;
unsigned char v105 = 5;
unsigned char v104 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
