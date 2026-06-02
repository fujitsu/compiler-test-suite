#include <stdlib.h>
extern signed char v3 (signed short, signed char, signed char, signed char);
extern signed char (*v4) (signed short, signed char, signed char, signed char);
signed char v7 (unsigned char, unsigned short, unsigned char);
signed char (*v8) (unsigned char, unsigned short, unsigned char) = v7;
extern void v9 (unsigned short, unsigned char, signed int);
extern void (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
unsigned char v19 (signed short, unsigned short, signed int);
unsigned char (*v20) (signed short, unsigned short, signed int) = v19;
extern void v21 (unsigned char, signed char, unsigned char);
extern void (*v22) (unsigned char, signed char, unsigned char);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
unsigned int v25 (signed char);
unsigned int (*v26) (signed char) = v25;
unsigned int v27 (signed int, unsigned char, unsigned int, signed short);
unsigned int (*v28) (signed int, unsigned char, unsigned int, signed short) = v27;
extern signed char v29 (signed short, unsigned short);
extern signed char (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v66 = 6U;
signed short v65 = 0;
signed int v64 = -4;

unsigned int v27 (signed int v67, unsigned char v68, unsigned int v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 0;
signed short v72 = -4;
signed char v71 = 3;
trace++;
switch (trace)
{
case 10: 
{
signed short v74;
unsigned short v75;
signed char v76;
v74 = v70 - v72;
v75 = 1 + 5;
v76 = v29 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return v69;
default: abort ();
}
}
}
}

unsigned int v25 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 3U;
unsigned short v79 = 7;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 2;
signed char v83 = 3;
signed char v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v85, unsigned short v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 4;
unsigned short v89 = 0;
unsigned short v88 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v93 = 1;
unsigned short v92 = 4;
signed int v91 = 1;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
return -2;
case 6: 
return -4;
case 8: 
{
unsigned char v94;
unsigned short v95;
signed short v96;
signed short v97;
v94 = 3 - 0;
v95 = v92 + 3;
v96 = -2 + 3;
v97 = v17 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v98, unsigned short v99, unsigned char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -2;
signed int v102 = 2;
signed char v101 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
