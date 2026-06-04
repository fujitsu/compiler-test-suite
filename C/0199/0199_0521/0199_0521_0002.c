#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int, signed char);
extern unsigned char (*v2) (signed char, unsigned int, signed char);
void v3 (signed int);
void (*v4) (signed int) = v3;
extern signed short v5 (signed int, signed int, unsigned char, signed char);
extern signed short (*v6) (signed int, signed int, unsigned char, signed char);
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
signed char v9 (unsigned int, signed char);
signed char (*v10) (unsigned int, signed char) = v9;
extern signed int v11 (unsigned int, unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short);
extern signed short (*v14) (signed int, unsigned char, signed short);
extern unsigned int v15 (unsigned short, signed char, signed char);
extern unsigned int (*v16) (unsigned short, signed char, signed char);
extern signed int v17 (unsigned char, unsigned short, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short, unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
signed char v21 (unsigned int, unsigned int, signed int);
signed char (*v22) (unsigned int, unsigned int, signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned char, unsigned short, signed char);
extern signed short (*v28) (unsigned char, unsigned short, signed char);
unsigned int v29 (signed char, unsigned char, unsigned int);
unsigned int (*v30) (signed char, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 6;
unsigned int v68 = 7U;
unsigned int v67 = 1U;

unsigned int v29 (signed char v70, unsigned char v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 5U;
signed char v74 = 2;
signed int v73 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed char v76;
unsigned int v77;
signed char v78;
unsigned char v79;
v76 = v70 - v74;
v77 = 2U - v75;
v78 = v74 + v70;
v79 = v1 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 14: 
return v75;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v80, unsigned int v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 1U;
unsigned int v84 = 2U;
signed short v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v86, signed char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -4;
signed short v89 = 0;
unsigned char v88 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -2;
signed char v93 = -1;
signed char v92 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed char v95;
signed int v96;
v95 = 1 - 0;
v96 = v19 (v95);
history[history_index++] = (int)v96;
}
break;
case 6: 
{
signed char v97;
signed int v98;
v97 = -1 + v92;
v98 = v19 (v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
signed char v99;
signed int v100;
v99 = 1 - v93;
v100 = v19 (v99);
history[history_index++] = (int)v100;
}
break;
case 10: 
{
signed char v101;
signed int v102;
v101 = 0 + v92;
v102 = v19 (v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
