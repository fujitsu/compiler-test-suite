#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned char v5 (signed short, signed short, signed short);
extern unsigned char (*v6) (signed short, signed short, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
void v9 (signed short, unsigned short, unsigned char);
void (*v10) (signed short, unsigned short, unsigned char) = v9;
void v11 (unsigned int, unsigned short, unsigned char);
void (*v12) (unsigned int, unsigned short, unsigned char) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern signed short v21 (signed char, unsigned int, unsigned char, signed int);
extern signed short (*v22) (signed char, unsigned int, unsigned char, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed short, signed int, signed char, unsigned int);
extern signed int (*v26) (signed short, signed int, signed char, unsigned int);
extern signed short v27 (signed char, signed char);
extern signed short (*v28) (signed char, signed char);
signed short v29 (signed short, signed int, unsigned char, signed short);
signed short (*v30) (signed short, signed int, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v78 = 0;
signed char v77 = 3;
unsigned short v76 = 6;

signed short v29 (signed short v79, signed int v80, unsigned char v81, signed short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -1;
signed short v84 = 0;
unsigned char v83 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v86, unsigned short v87, unsigned char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -2;
unsigned char v90 = 3;
signed int v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v92, unsigned short v93, unsigned char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -4;
unsigned int v96 = 6U;
unsigned int v95 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed char v98;
signed char v99;
signed short v100;
v98 = -2 + v97;
v99 = 0 - 1;
v100 = v27 (v98, v99);
history[history_index++] = (int)v100;
}
break;
case 3: 
{
signed char v101;
unsigned int v102;
unsigned char v103;
signed int v104;
signed short v105;
v101 = 2 - v97;
v102 = 5U + v96;
v103 = 1 + 6;
v104 = -4 + 1;
v105 = v21 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 5: 
{
unsigned int v106;
signed int v107;
v106 = v95 - v96;
v107 = v13 (v106);
history[history_index++] = (int)v107;
}
break;
case 9: 
{
unsigned int v108;
signed int v109;
v108 = v96 - 5U;
v109 = v13 (v108);
history[history_index++] = (int)v109;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
