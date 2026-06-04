#include <stdlib.h>
unsigned short v1 (signed short, signed short);
unsigned short (*v2) (signed short, signed short) = v1;
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned int, signed int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned char, signed short);
extern signed char v9 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed char (*v10) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v11 (unsigned char, unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
signed short v19 (signed int, signed int, unsigned char, unsigned int);
signed short (*v20) (signed int, signed int, unsigned char, unsigned int) = v19;
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
unsigned short v23 (unsigned char, signed char, unsigned int, unsigned char);
unsigned short (*v24) (unsigned char, signed char, unsigned int, unsigned char) = v23;
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern void v27 (signed char, signed short, unsigned char, signed short);
extern void (*v28) (signed char, signed short, unsigned char, signed short);
extern signed char v29 (signed int, unsigned int, signed int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = 0;
unsigned char v62 = 5;
signed int v61 = -1;

unsigned short v23 (unsigned char v64, signed char v65, unsigned int v66, unsigned char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -2;
signed short v69 = 2;
unsigned short v68 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v71, signed int v72, unsigned char v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 0;
unsigned char v76 = 6;
signed char v75 = 2;
trace++;
switch (trace)
{
case 3: 
return 1;
case 10: 
return -1;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed int v80 = -3;
unsigned short v79 = 4;
unsigned int v78 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v81, signed short v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 7U;
unsigned int v84 = 0U;
signed short v83 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v86;
v86 = v5 ();
history[history_index++] = (int)v86;
}
break;
case 2: 
{
signed int v87;
signed int v88;
unsigned char v89;
unsigned int v90;
signed short v91;
v87 = -3 - 0;
v88 = 3 + 3;
v89 = 3 - 7;
v90 = v84 + v85;
v91 = v19 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 4: 
return 2;
case 5: 
return 0;
case 6: 
{
signed char v92;
signed short v93;
unsigned char v94;
signed short v95;
v92 = -2 - -2;
v93 = v82 - v83;
v94 = 7 + 0;
v95 = v83 - v81;
v27 (v92, v93, v94, v95);
}
break;
case 8: 
{
unsigned char v96;
unsigned char v97;
signed char v98;
signed char v99;
unsigned int v100;
v96 = 6 + 2;
v97 = 0 + 2;
v98 = 1 + -2;
v99 = 2 + -1;
v100 = v11 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
