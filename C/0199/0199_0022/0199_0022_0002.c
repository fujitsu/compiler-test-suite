#include <stdlib.h>
signed char v1 (signed char, signed int, unsigned int, signed int);
signed char (*v2) (signed char, signed int, unsigned int, signed int) = v1;
extern signed char v3 (unsigned int, unsigned char, signed int);
extern signed char (*v4) (unsigned int, unsigned char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed short v19 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v20) (signed char, unsigned int, unsigned char, unsigned int);
unsigned int v21 (signed char, signed short, signed char);
unsigned int (*v22) (signed char, signed short, signed char) = v21;
extern void v23 (signed int, unsigned short);
extern void (*v24) (signed int, unsigned short);
extern signed short v25 (signed int, signed char, signed int);
extern signed short (*v26) (signed int, signed char, signed int);
static unsigned char v27 (signed short, signed int);
static unsigned char (*v28) (signed short, signed int) = v27;
extern unsigned short v29 (unsigned char, signed int, unsigned int);
extern unsigned short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 3U;
signed char v72 = -2;
signed char v71 = -2;

static unsigned char v27 (signed short v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 0U;
signed char v77 = 3;
signed char v76 = -1;
trace++;
switch (trace)
{
case 8: 
return 4;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned int v21 (signed char v79, signed short v80, signed char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 0;
unsigned short v83 = 6;
unsigned short v82 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed short v85;
signed int v86;
unsigned char v87;
v85 = v80 + 3;
v86 = v84 - v84;
v87 = v27 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
{
signed short v88;
signed int v89;
unsigned char v90;
v88 = -4 + v80;
v89 = -2 - v84;
v90 = v27 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 11: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
signed short v93 = -4;
unsigned short v92 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v95;
signed int v96;
v95 = 3 - -2;
v96 = v17 (v95);
history[history_index++] = (int)v96;
}
break;
case 5: 
{
signed char v97;
signed int v98;
v97 = -4 - 1;
v98 = v17 (v97);
history[history_index++] = (int)v98;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed char v1 (signed char v99, signed int v100, unsigned int v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -3;
unsigned short v104 = 5;
unsigned short v103 = 6;
trace++;
switch (trace)
{
case 0: 
return v99;
case 1: 
{
signed int v106;
v106 = 3 + v100;
v7 (v106);
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}
