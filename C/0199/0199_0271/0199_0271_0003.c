#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (signed char, signed char);
extern signed char (*v6) (signed char, signed char);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
unsigned int v9 (unsigned int);
unsigned int (*v10) (unsigned int) = v9;
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern signed char v13 (signed short, signed int, signed char, signed char);
extern signed char (*v14) (signed short, signed int, signed char, signed char);
extern unsigned int v15 (unsigned char, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned int);
extern signed short v17 (unsigned short, signed int, signed int);
extern signed short (*v18) (unsigned short, signed int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern void v21 (signed char, signed short, signed int, signed char);
extern void (*v22) (signed char, signed short, signed int, signed char);
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = 1;
signed char v84 = 1;
signed int v83 = -1;

unsigned char v27 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 3U;
signed char v88 = 3;
unsigned short v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -1;
unsigned int v92 = 0U;
signed char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed int v96 = 2;
signed int v95 = -2;
unsigned char v94 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v97;
signed short v98;
signed int v99;
signed char v100;
v97 = 3 + -1;
v98 = 1 + -2;
v99 = -4 + -4;
v100 = 3 - -2;
v21 (v97, v98, v99, v100);
}
break;
case 2: 
{
signed char v101;
unsigned char v102;
signed int v103;
unsigned char v104;
unsigned short v105;
v101 = 1 + 1;
v102 = v94 - 5;
v103 = v96 + v96;
v104 = v94 - 7;
v105 = v23 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 4: 
{
unsigned int v106;
unsigned char v107;
unsigned short v108;
v106 = 7U - 0U;
v107 = v94 + v94;
v108 = v11 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 6: 
{
unsigned short v109;
signed int v110;
signed int v111;
signed short v112;
v109 = 4 + 2;
v110 = v96 - v95;
v111 = -1 - v95;
v112 = v17 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 5U;
case 14: 
return 3U;
default: abort ();
}
}
}
}
