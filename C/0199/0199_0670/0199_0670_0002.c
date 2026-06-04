#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (unsigned short, signed short, unsigned int, signed char);
extern signed short (*v4) (unsigned short, signed short, unsigned int, signed char);
signed char v5 (unsigned char);
signed char (*v6) (unsigned char) = v5;
extern signed short v7 (unsigned short, signed char);
extern signed short (*v8) (unsigned short, signed char);
unsigned short v9 (unsigned char, unsigned char, unsigned short);
unsigned short (*v10) (unsigned char, unsigned char, unsigned short) = v9;
signed char v11 (signed short, signed int, signed int, signed short);
signed char (*v12) (signed short, signed int, signed int, signed short) = v11;
unsigned short v13 (unsigned char, unsigned int);
unsigned short (*v14) (unsigned char, unsigned int) = v13;
extern void v15 (unsigned char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, signed char);
signed int v19 (unsigned short);
signed int (*v20) (unsigned short) = v19;
extern unsigned int v21 (unsigned int, unsigned char, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 2;
unsigned short v68 = 1;
signed char v67 = -4;

signed int v19 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 1U;
signed char v72 = 0;
signed short v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v74, unsigned int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 3;
signed int v77 = 0;
signed char v76 = -1;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

signed char v11 (signed short v79, signed int v80, signed int v81, signed short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -3;
unsigned char v84 = 4;
signed char v83 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v86, unsigned char v87, unsigned short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 3;
unsigned short v90 = 1;
signed char v89 = 3;
trace++;
switch (trace)
{
case 3: 
return v91;
case 9: 
{
unsigned int v92;
unsigned char v93;
unsigned short v94;
unsigned char v95;
signed int v96;
v92 = 0U + 3U;
v93 = v87 + v86;
v94 = 3 + 6;
v95 = v86 - v87;
v96 = v29 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 13: 
return v88;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 7U;
signed short v99 = -3;
unsigned int v98 = 5U;
trace++;
switch (trace)
{
case 7: 
return -3;
default: abort ();
}
}
}
}
