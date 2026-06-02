#include <stdlib.h>
extern signed short v1 (signed int, signed int, signed short, signed int);
extern signed short (*v2) (signed int, signed int, signed short, signed int);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
unsigned char v5 (unsigned char, signed short, unsigned char, signed short);
unsigned char (*v6) (unsigned char, signed short, unsigned char, signed short) = v5;
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed char v9 (unsigned short, signed short, signed char, unsigned int);
extern signed char (*v10) (unsigned short, signed short, signed char, unsigned int);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed int, signed char);
extern signed short (*v14) (unsigned int, signed int, signed char);
unsigned int v15 (signed int, signed short);
unsigned int (*v16) (signed int, signed short) = v15;
static unsigned int v17 (signed char, unsigned int);
static unsigned int (*v18) (signed char, unsigned int) = v17;
extern unsigned int v19 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern unsigned short v23 (signed short, unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned short, signed char, unsigned char);
extern signed int v25 (unsigned char, signed char, unsigned int, unsigned short);
extern signed int (*v26) (unsigned char, signed char, unsigned int, unsigned short);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = -1;
unsigned int v73 = 1U;
signed short v72 = 1;

static unsigned int v17 (signed char v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -2;
signed char v78 = 3;
signed char v77 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v80;
unsigned short v81;
unsigned int v82;
unsigned int v83;
v80 = 7U - v76;
v81 = 7 - 2;
v82 = 6U + 5U;
v83 = v19 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 7: 
{
unsigned int v84;
unsigned short v85;
unsigned int v86;
unsigned int v87;
v84 = 0U - v76;
v85 = 6 + 4;
v86 = v76 - v76;
v87 = v19 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
{
unsigned int v88;
unsigned short v89;
unsigned int v90;
unsigned int v91;
v88 = v76 + 4U;
v89 = 0 - 1;
v90 = 0U - 5U;
v91 = v19 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return v76;
default: abort ();
}
}
}
}

unsigned int v15 (signed int v92, signed short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 1;
unsigned short v95 = 2;
unsigned short v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v97, signed short v98, unsigned char v99, signed short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 2;
unsigned short v102 = 5;
unsigned short v101 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed char v104;
unsigned int v105;
unsigned int v106;
v104 = -4 - 2;
v105 = 4U - 4U;
v106 = v17 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v99;
default: abort ();
}
}
}
}
