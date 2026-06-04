#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed int v3 (signed char, unsigned char, unsigned int);
extern signed int (*v4) (signed char, unsigned char, unsigned int);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
signed int v7 (signed short, unsigned int);
signed int (*v8) (signed short, unsigned int) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v14) (signed char, unsigned int, signed int, unsigned short);
signed short v15 (signed int, unsigned int, signed int);
signed short (*v16) (signed int, unsigned int, signed int) = v15;
signed int v17 (unsigned int, signed short);
signed int (*v18) (unsigned int, signed short) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed char);
extern signed short (*v22) (unsigned short, signed char);
extern signed char v23 (signed int, signed int, signed short, unsigned short);
extern signed char (*v24) (signed int, signed int, signed short, unsigned short);
extern unsigned int v25 (unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned short);
unsigned short v27 (unsigned short, unsigned short, unsigned int, unsigned char);
unsigned short (*v28) (unsigned short, unsigned short, unsigned int, unsigned char) = v27;
extern signed char v29 (signed int, unsigned int, unsigned short, signed char);
extern signed char (*v30) (signed int, unsigned int, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v76 = -3;
unsigned short v75 = 5;
signed int v74 = 1;

unsigned short v27 (unsigned short v77, unsigned short v78, unsigned int v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 7;
unsigned short v82 = 3;
unsigned short v81 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v84, signed short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 1;
signed short v87 = 3;
signed int v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v89, unsigned int v90, signed int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -2;
unsigned char v93 = 5;
signed short v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v95, unsigned int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 0;
signed char v98 = -4;
signed int v97 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v100;
unsigned short v101;
unsigned int v102;
v100 = v96 - v96;
v101 = 3 - 7;
v102 = v25 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 5: 
return 0;
case 7: 
{
unsigned int v103;
unsigned short v104;
unsigned int v105;
v103 = 0U - v96;
v104 = 7 + 5;
v105 = v25 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 10: 
return v97;
case 13: 
return v97;
case 16: 
return -2;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v108 = 1U;
signed int v107 = 2;
signed int v106 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v109;
v109 = 1 + 0;
v5 (v109);
}
break;
case 18: 
return 7;
default: abort ();
}
}
}
}
