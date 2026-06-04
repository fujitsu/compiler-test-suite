#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned short, signed int, signed short);
unsigned char (*v2) (unsigned int, unsigned short, signed int, signed short) = v1;
extern unsigned short v3 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
unsigned char v13 (signed short, signed int);
unsigned char (*v14) (signed short, signed int) = v13;
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned int v21 (unsigned int, unsigned char);
unsigned int (*v22) (unsigned int, unsigned char) = v21;
unsigned char v23 (signed int, signed short, unsigned char, signed short);
unsigned char (*v24) (signed int, signed short, unsigned char, signed short) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed short);
extern signed int (*v28) (signed short, signed short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 2;
signed int v72 = 2;
signed char v71 = -1;

unsigned char v23 (signed int v74, signed short v75, unsigned char v76, signed short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 1U;
unsigned int v79 = 6U;
unsigned int v78 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v81, unsigned char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 0;
signed int v84 = 1;
signed short v83 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v88 = 3;
unsigned int v87 = 0U;
signed int v86 = -4;
trace++;
switch (trace)
{
case 10: 
{
signed char v89;
v89 = v17 ();
history[history_index++] = (int)v89;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 0U;
unsigned int v93 = 1U;
unsigned int v92 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v95, unsigned short v96, signed int v97, signed short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -1;
signed short v100 = 3;
unsigned short v99 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v102;
v102 = v25 ();
history[history_index++] = (int)v102;
}
break;
case 2: 
{
unsigned short v103;
unsigned char v104;
unsigned short v105;
v103 = 5 + v99;
v104 = 3 + 6;
v105 = v7 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 8: 
{
unsigned int v106;
unsigned char v107;
v106 = 3U + 0U;
v107 = v9 (v106);
history[history_index++] = (int)v107;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
