#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, signed char);
unsigned int v3 (unsigned short, signed short, signed int);
unsigned int (*v4) (unsigned short, signed short, signed int) = v3;
extern signed char v5 (signed char, unsigned char, signed char);
extern signed char (*v6) (signed char, unsigned char, signed char);
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
signed char v9 (signed short, signed char, unsigned int, signed short);
signed char (*v10) (signed short, signed char, unsigned int, signed short) = v9;
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v16) (unsigned short, unsigned short, signed int, signed int);
extern signed char v17 (unsigned short, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, unsigned short);
extern unsigned short v19 (unsigned char, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned short);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern void v23 (signed char, unsigned short);
extern void (*v24) (signed char, unsigned short);
unsigned short v25 (signed int, signed int, unsigned short);
unsigned short (*v26) (signed int, signed int, unsigned short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = 3;
signed short v69 = -4;
signed int v68 = -2;

unsigned short v25 (signed int v71, signed int v72, unsigned short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 5;
unsigned char v75 = 3;
unsigned char v74 = 7;
trace++;
switch (trace)
{
case 2: 
return v73;
case 5: 
return v73;
case 10: 
return 4;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v79 = 3;
unsigned char v78 = 1;
signed int v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v80, signed char v81, unsigned int v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -4;
signed int v85 = -1;
unsigned short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 3;
unsigned short v89 = 6;
signed int v88 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v91, signed short v92, signed int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
signed short v95 = -2;
signed short v94 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed int v97;
signed int v98;
unsigned short v99;
unsigned short v100;
v97 = 1 + 1;
v98 = 2 + v93;
v99 = 1 + v91;
v100 = v25 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 3: 
{
signed char v101;
unsigned short v102;
v101 = 0 - -4;
v102 = v91 - 2;
v23 (v101, v102);
}
break;
case 7: 
{
signed char v103;
unsigned short v104;
v103 = 2 - -1;
v104 = v91 + 7;
v23 (v103, v104);
}
break;
case 9: 
{
signed int v105;
signed int v106;
unsigned short v107;
unsigned short v108;
v105 = v93 + v93;
v106 = 1 + v93;
v107 = 2 + 4;
v108 = v25 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}
