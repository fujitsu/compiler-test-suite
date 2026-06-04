#include <stdlib.h>
unsigned char v1 (unsigned int, signed short, unsigned int, signed short);
unsigned char (*v2) (unsigned int, signed short, unsigned int, signed short) = v1;
extern unsigned int v3 (unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed short, unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, signed char, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
unsigned char v13 (signed int);
unsigned char (*v14) (signed int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned short);
extern signed short (*v18) (unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
signed int v25 (signed short, signed char, signed char);
signed int (*v26) (signed short, signed char, signed char) = v25;
extern signed short v27 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v28) (signed int, unsigned char, unsigned char, signed int);
extern void v29 (signed short, unsigned short, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 6;
unsigned char v87 = 0;
signed char v86 = -1;

signed int v25 (signed short v89, signed char v90, signed char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 2;
unsigned short v93 = 1;
signed int v92 = 2;
trace++;
switch (trace)
{
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 6;
signed int v97 = 2;
signed int v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v99, signed short v100, unsigned int v101, signed short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 2;
unsigned short v104 = 4;
signed int v103 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v106;
unsigned int v107;
v106 = -4 - -1;
v107 = v11 (v106);
history[history_index++] = (int)v107;
}
break;
case 2: 
{
signed char v108;
signed char v109;
v108 = 3 + 2;
v109 = v19 (v108);
history[history_index++] = (int)v109;
}
break;
case 4: 
{
v21 ();
}
break;
case 6: 
{
v21 ();
}
break;
case 8: 
{
unsigned char v110;
unsigned int v111;
unsigned short v112;
signed short v113;
v110 = 2 - v105;
v111 = v101 - v99;
v112 = v104 + v104;
v113 = v17 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 14: 
return v105;
default: abort ();
}
}
}
}
