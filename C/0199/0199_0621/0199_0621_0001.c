#include <stdlib.h>
extern signed char v1 (signed int, signed short);
extern signed char (*v2) (signed int, signed short);
extern unsigned int v3 (unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, signed short);
extern signed short v5 (unsigned char, unsigned short);
extern signed short (*v6) (unsigned char, unsigned short);
signed short v7 (unsigned int, signed char, unsigned char);
signed short (*v8) (unsigned int, signed char, unsigned char) = v7;
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
extern signed short v11 (signed int, signed int, unsigned char);
extern signed short (*v12) (signed int, signed int, unsigned char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern unsigned short v15 (unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed short, signed char, signed short);
extern signed char (*v24) (unsigned char, signed short, signed char, signed short);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
static signed short v27 (unsigned char, unsigned short);
static signed short (*v28) (unsigned char, unsigned short) = v27;
unsigned char v29 (signed short, unsigned char, signed int);
unsigned char (*v30) (signed short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 2;
unsigned int v71 = 3U;
unsigned char v70 = 1;

unsigned char v29 (signed short v73, unsigned char v74, signed int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
unsigned short v77 = 2;
signed int v76 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v79;
unsigned short v80;
signed short v81;
v79 = v74 - 5;
v80 = v77 - 5;
v81 = v27 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 6: 
{
unsigned char v82;
unsigned short v83;
signed short v84;
v82 = v74 - v74;
v83 = 6 - 0;
v84 = v27 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 8: 
{
unsigned char v85;
unsigned short v86;
signed short v87;
v85 = 5 - v74;
v86 = 2 - v77;
v87 = v27 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 10: 
{
unsigned char v88;
unsigned short v89;
signed short v90;
v88 = v74 + 2;
v89 = 5 + 2;
v90 = v27 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}

static signed short v27 (unsigned char v91, unsigned short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 0;
signed int v94 = 1;
unsigned int v93 = 0U;
trace++;
switch (trace)
{
case 5: 
return v95;
case 7: 
return 0;
case 9: 
return -3;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v96, signed char v97, unsigned char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 4U;
signed int v100 = 1;
signed char v99 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
