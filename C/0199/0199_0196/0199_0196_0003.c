#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
unsigned int v7 (unsigned short, signed short);
unsigned int (*v8) (unsigned short, signed short) = v7;
signed char v9 (unsigned int, signed char);
signed char (*v10) (unsigned int, signed char) = v9;
extern signed int v11 (unsigned char, unsigned char, unsigned int);
extern signed int (*v12) (unsigned char, unsigned char, unsigned int);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed int v21 (signed int, unsigned short);
extern signed int (*v22) (signed int, unsigned short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (unsigned short, unsigned short);
unsigned char (*v28) (unsigned short, unsigned short) = v27;
signed int v29 (unsigned char, signed short, unsigned char, unsigned int);
signed int (*v30) (unsigned char, signed short, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v72 = 2;
unsigned int v71 = 5U;
signed short v70 = -3;

signed int v29 (unsigned char v73, signed short v74, unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 0U;
unsigned int v78 = 6U;
signed char v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v80, unsigned short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
signed char v83 = -4;
unsigned short v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned int v87 = 3U;
signed int v86 = 2;
signed short v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v88, signed char v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = -2;
unsigned int v91 = 3U;
signed char v90 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v93;
unsigned short v94;
signed int v95;
v93 = -2 - v92;
v94 = 3 - 7;
v95 = v21 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 3: 
{
signed int v96;
unsigned short v97;
signed int v98;
v96 = v92 - 1;
v97 = 7 + 6;
v98 = v21 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 5: 
{
signed int v99;
unsigned short v100;
signed int v101;
v99 = v92 - v92;
v100 = 2 + 6;
v101 = v21 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 7: 
{
signed int v102;
unsigned short v103;
signed int v104;
v102 = -1 - 3;
v103 = 5 + 6;
v104 = v21 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
{
signed int v105;
unsigned short v106;
signed int v107;
v105 = v92 - -2;
v106 = 4 + 2;
v107 = v21 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -1;
unsigned short v111 = 2;
signed char v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
