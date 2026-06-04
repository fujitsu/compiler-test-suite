#include <stdlib.h>
extern unsigned short v1 (signed char, signed char, unsigned char);
extern unsigned short (*v2) (signed char, signed char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
unsigned char v5 (unsigned char, unsigned char);
unsigned char (*v6) (unsigned char, unsigned char) = v5;
extern unsigned char v7 (unsigned char, signed int, signed int, signed int);
extern unsigned char (*v8) (unsigned char, signed int, signed int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
signed int v15 (signed short, signed char, unsigned int, signed char);
signed int (*v16) (signed short, signed char, unsigned int, signed char) = v15;
static signed int v17 (signed int, signed int, unsigned short);
static signed int (*v18) (signed int, signed int, unsigned short) = v17;
extern void v19 (signed int, signed int, unsigned char, signed char);
extern void (*v20) (signed int, signed int, unsigned char, signed char);
extern signed short v21 (signed short, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned short, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned short, unsigned int, signed int, unsigned char);
extern signed short (*v30) (unsigned short, unsigned int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 3;
unsigned int v78 = 3U;
signed int v77 = -3;

static signed int v17 (signed int v80, signed int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = 1;
unsigned int v84 = 4U;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
case 3: 
return -1;
case 5: 
return v81;
case 7: 
{
signed int v86;
v86 = v25 ();
history[history_index++] = (int)v86;
}
break;
case 9: 
{
signed int v87;
v87 = v25 ();
history[history_index++] = (int)v87;
}
break;
case 13: 
return v81;
default: abort ();
}
}
}
}

signed int v15 (signed short v88, signed char v89, unsigned int v90, signed char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 3U;
unsigned int v93 = 7U;
unsigned char v92 = 7;
trace++;
switch (trace)
{
case 2: 
{
signed int v95;
signed int v96;
unsigned short v97;
signed int v98;
v95 = -4 + 1;
v96 = -1 - 3;
v97 = 1 - 4;
v98 = v17 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 4: 
{
signed int v99;
signed int v100;
unsigned short v101;
signed int v102;
v99 = -2 - -3;
v100 = -3 + -4;
v101 = 3 + 7;
v102 = v17 (v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 6: 
{
signed int v103;
signed int v104;
unsigned short v105;
signed int v106;
v103 = -3 - -1;
v104 = 2 + 1;
v105 = 1 + 1;
v106 = v17 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 11: 
return 0;
case 14: 
return 3;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 7;
signed char v110 = -3;
unsigned char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
