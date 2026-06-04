#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned short, signed short, unsigned short);
extern unsigned short (*v2) (signed char, unsigned short, signed short, unsigned short);
extern unsigned int v3 (unsigned short, signed int, unsigned int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int, signed char);
extern unsigned char v5 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, signed int, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
unsigned char v15 (signed char);
unsigned char (*v16) (signed char) = v15;
extern unsigned char v17 (unsigned int, signed short);
extern unsigned char (*v18) (unsigned int, signed short);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned int, unsigned char, unsigned char, signed char);
extern signed short (*v28) (unsigned int, unsigned char, unsigned char, signed char);
static signed char v29 (unsigned short, signed int);
static signed char (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -3;
unsigned char v69 = 0;
unsigned int v68 = 0U;

static signed char v29 (unsigned short v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -1;
signed short v74 = 1;
unsigned int v73 = 5U;
trace++;
switch (trace)
{
case 8: 
return -1;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned char v15 (signed char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 5;
unsigned char v78 = 7;
signed char v77 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v80;
unsigned char v81;
unsigned char v82;
signed char v83;
signed short v84;
v80 = 6U + 4U;
v81 = v78 + 3;
v82 = 7 - 2;
v83 = v77 + 0;
v84 = v27 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 3: 
{
unsigned int v85;
signed short v86;
unsigned char v87;
v85 = 3U + 7U;
v86 = -3 + 1;
v87 = v17 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 5: 
{
unsigned int v88;
signed short v89;
unsigned char v90;
v88 = 2U - 3U;
v89 = -1 - 0;
v90 = v17 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 7: 
{
unsigned short v91;
signed int v92;
signed char v93;
v91 = v79 - v79;
v92 = 0 - -3;
v93 = v29 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 9: 
{
unsigned short v94;
signed int v95;
signed char v96;
v94 = v79 + 4;
v95 = -4 + -2;
v96 = v29 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 5;
unsigned char v99 = 1;
unsigned int v98 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
