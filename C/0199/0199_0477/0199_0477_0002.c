#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned int, unsigned char, unsigned short);
unsigned int (*v2) (unsigned short, unsigned int, unsigned char, unsigned short) = v1;
signed short v3 (unsigned int, signed char, unsigned short);
signed short (*v4) (unsigned int, signed char, unsigned short) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
unsigned int v7 (unsigned char, signed int);
unsigned int (*v8) (unsigned char, signed int) = v7;
signed short v9 (unsigned char, signed char, unsigned short);
signed short (*v10) (unsigned char, signed char, unsigned short) = v9;
signed short v11 (unsigned short, unsigned short);
signed short (*v12) (unsigned short, unsigned short) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (signed char, signed int, signed short, unsigned int);
extern signed short (*v16) (signed char, signed int, signed short, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, signed char);
extern signed short (*v20) (signed char, signed char);
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
extern signed char v23 (signed char, unsigned char, signed short);
extern signed char (*v24) (signed char, unsigned char, signed short);
extern signed char v25 (signed short, unsigned int);
extern signed char (*v26) (signed short, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = -1;
unsigned int v62 = 2U;
signed char v61 = 0;

signed short v11 (unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 2;
unsigned short v67 = 1;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v69, signed char v70, unsigned short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 3;
unsigned short v73 = 5;
signed int v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 6;
unsigned short v78 = 1;
unsigned short v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v82 = 4U;
signed int v81 = 2;
unsigned char v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v83, signed char v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 1;
signed char v87 = 2;
signed char v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v89, unsigned int v90, unsigned char v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 4;
unsigned int v94 = 7U;
signed int v93 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v96;
unsigned short v97;
v96 = 0 + 3;
v97 = v92 + v89;
v29 (v96, v97);
}
break;
case 2: 
{
signed char v98;
unsigned char v99;
signed short v100;
signed char v101;
v98 = 3 + 3;
v99 = 5 - 5;
v100 = 3 - 0;
v101 = v23 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 4: 
{
signed int v102;
unsigned short v103;
v102 = 3 - 3;
v103 = v21 (v102);
history[history_index++] = (int)v103;
}
break;
case 6: 
{
signed char v104;
signed char v105;
signed short v106;
v104 = 0 - 3;
v105 = 3 - -4;
v106 = v19 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 8: 
return 3U;
case 9: 
{
signed char v107;
unsigned short v108;
v107 = 2 - -1;
v108 = v89 - v92;
v29 (v107, v108);
}
break;
case 11: 
return v94;
default: abort ();
}
}
}
}
