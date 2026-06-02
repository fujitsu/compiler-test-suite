#include <stdlib.h>
unsigned char v3 (signed short, signed short, unsigned int, signed char);
unsigned char (*v4) (signed short, signed short, unsigned int, signed char) = v3;
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
extern signed short v9 (signed int, unsigned short, unsigned int);
extern signed short (*v10) (signed int, unsigned short, unsigned int);
extern signed int v11 (signed int, unsigned char, unsigned short);
extern signed int (*v12) (signed int, unsigned char, unsigned short);
void v13 (signed int);
void (*v14) (signed int) = v13;
void v15 (unsigned int, unsigned char);
void (*v16) (unsigned int, unsigned char) = v15;
extern void v17 (signed int, signed short, signed int, unsigned int);
extern void (*v18) (signed int, signed short, signed int, unsigned int);
signed int v19 (signed int, unsigned int, unsigned int);
signed int (*v20) (signed int, unsigned int, unsigned int) = v19;
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (unsigned char, unsigned int, signed int);
extern signed int (*v26) (unsigned char, unsigned int, signed int);
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
extern signed char v29 (signed short, unsigned int, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned int, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v65 = 0;
signed int v64 = -1;
unsigned short v63 = 2;

signed int v19 (signed int v66, unsigned int v67, unsigned int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -2;
unsigned short v70 = 7;
signed short v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned int v72, unsigned char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 3;
unsigned int v75 = 3U;
signed int v74 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed int v77;
signed short v78;
signed int v79;
unsigned int v80;
v77 = v74 + -1;
v78 = -2 - 3;
v79 = 1 + -2;
v80 = v72 + v72;
v17 (v77, v78, v79, v80);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v13 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -2;
unsigned short v83 = 4;
signed char v82 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v85, signed short v86, unsigned int v87, signed char v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 2;
signed char v90 = -4;
unsigned int v89 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed int v92;
signed short v93;
signed int v94;
unsigned int v95;
v92 = 0 + -2;
v93 = v86 - v91;
v94 = -2 + -1;
v95 = v87 - 4U;
v17 (v92, v93, v94, v95);
}
break;
case 3: 
{
signed int v96;
signed short v97;
signed int v98;
unsigned int v99;
v96 = 3 + -2;
v97 = v85 + v91;
v98 = -1 + 0;
v99 = 0U + v89;
v17 (v96, v97, v98, v99);
}
break;
case 5: 
{
signed int v100;
unsigned short v101;
unsigned int v102;
signed short v103;
v100 = -1 - 0;
v101 = 2 + 3;
v102 = 6U + v89;
v103 = v9 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}
