#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v2) (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned char v5 (signed int, signed short);
extern unsigned char (*v6) (signed int, signed short);
extern signed char v7 (signed int, signed char);
extern signed char (*v8) (signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
signed int v11 (unsigned int, unsigned int, signed short);
signed int (*v12) (unsigned int, unsigned int, signed short) = v11;
unsigned short v13 (unsigned short, signed short, signed int, unsigned short);
unsigned short (*v14) (unsigned short, signed short, signed int, unsigned short) = v13;
signed char v15 (signed int, unsigned int, unsigned short, unsigned int);
signed char (*v16) (signed int, unsigned int, unsigned short, unsigned int) = v15;
extern unsigned int v17 (signed char, signed int, signed short, signed char);
extern unsigned int (*v18) (signed char, signed int, signed short, signed char);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed char v25 (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed char (*v26) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
unsigned short v29 (unsigned char, unsigned int, unsigned short, unsigned short);
unsigned short (*v30) (unsigned char, unsigned int, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = -2;
signed int v61 = 3;
unsigned char v60 = 6;

unsigned short v29 (unsigned char v63, unsigned int v64, unsigned short v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 7U;
unsigned char v68 = 5;
unsigned short v67 = 0;
trace++;
switch (trace)
{
case 5: 
return 6;
case 7: 
return v67;
case 9: 
return v65;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned short v72 = 7;
unsigned char v71 = 7;
signed short v70 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v73, unsigned int v74, unsigned short v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -4;
unsigned char v78 = 2;
signed short v77 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v80;
signed int v81;
v80 = 7 + v75;
v81 = v19 (v80);
history[history_index++] = (int)v81;
}
break;
case 3: 
{
unsigned short v82;
signed int v83;
v82 = 0 - 5;
v83 = v19 (v82);
history[history_index++] = (int)v83;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v84, signed short v85, signed int v86, unsigned short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 5U;
signed char v89 = 3;
unsigned int v88 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v91, unsigned int v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 2;
unsigned short v95 = 0;
signed short v94 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
