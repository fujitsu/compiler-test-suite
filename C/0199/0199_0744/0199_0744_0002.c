#include <stdlib.h>
signed int v1 (unsigned char, signed char);
signed int (*v2) (unsigned char, signed char) = v1;
signed int v3 (unsigned char, unsigned char);
signed int (*v4) (unsigned char, unsigned char) = v3;
extern signed int v5 (signed int, unsigned char);
extern signed int (*v6) (signed int, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
signed char v11 (signed int, signed short, signed short);
signed char (*v12) (signed int, signed short, signed short) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (signed int, signed short);
extern void (*v16) (signed int, signed short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v19 (unsigned char, signed short, signed short);
extern void (*v20) (unsigned char, signed short, signed short);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
unsigned char v23 (signed char, unsigned short, unsigned short);
unsigned char (*v24) (signed char, unsigned short, unsigned short) = v23;
extern unsigned short v25 (signed short, signed char, unsigned char);
extern unsigned short (*v26) (signed short, signed char, unsigned char);
extern void v27 (signed short, signed int, signed int);
extern void (*v28) (signed short, signed int, signed int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = 0;
unsigned char v73 = 7;
unsigned short v72 = 3;

unsigned char v23 (signed char v75, unsigned short v76, unsigned short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 2;
signed short v79 = -4;
signed char v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned char v83 = 2;
unsigned char v82 = 0;
signed short v81 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v84, signed short v85, signed short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 1;
signed int v88 = 2;
unsigned short v87 = 7;
trace++;
switch (trace)
{
case 2: 
{
signed short v90;
signed int v91;
signed int v92;
v90 = v85 + v86;
v91 = v84 - -4;
v92 = v88 - v88;
v27 (v90, v91, v92);
}
break;
case 4: 
{
signed short v93;
v93 = v7 ();
history[history_index++] = (int)v93;
}
break;
case 6: 
{
signed short v94;
v94 = v7 ();
history[history_index++] = (int)v94;
}
break;
case 8: 
{
signed short v95;
v95 = v7 ();
history[history_index++] = (int)v95;
}
break;
case 10: 
return v89;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v96, unsigned char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 7U;
unsigned short v99 = 6;
unsigned int v98 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -1;
unsigned int v104 = 2U;
signed char v103 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v106;
signed char v107;
unsigned char v108;
unsigned short v109;
v106 = 3 + -1;
v107 = v105 + v103;
v108 = 1 - 7;
v109 = v25 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
