#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed char, signed short, signed int, signed short);
extern void (*v12) (signed char, signed short, signed int, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned int v15 (signed int, signed int, signed char, unsigned char);
extern unsigned int (*v16) (signed int, signed int, signed char, unsigned char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
unsigned char v19 (unsigned short, signed char, signed short);
unsigned char (*v20) (unsigned short, signed char, signed short) = v19;
extern unsigned int v21 (unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, signed int);
extern unsigned short v23 (unsigned short, signed char, signed short);
extern unsigned short (*v24) (unsigned short, signed char, signed short);
unsigned char v25 (unsigned int, unsigned short, signed short, signed short);
unsigned char (*v26) (unsigned int, unsigned short, signed short, signed short) = v25;
unsigned int v27 (unsigned short, unsigned short, signed short);
unsigned int (*v28) (unsigned short, unsigned short, signed short) = v27;
unsigned char v29 (signed char, unsigned char);
unsigned char (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 5;
signed char v67 = -4;
unsigned short v66 = 5;

unsigned char v29 (signed char v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 2;
signed int v72 = -4;
signed char v71 = -4;
trace++;
switch (trace)
{
case 1: 
return v70;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned short v74, unsigned short v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -3;
signed short v78 = 2;
signed int v77 = -1;
trace++;
switch (trace)
{
case 10: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v80, unsigned short v81, signed short v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 3;
signed short v85 = 3;
signed short v84 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v87, signed char v88, signed short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 5U;
signed short v91 = -2;
unsigned int v90 = 0U;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v93;
signed char v94;
signed short v95;
unsigned short v96;
v93 = 6 - v87;
v94 = 2 + v88;
v95 = v91 + v89;
v96 = v23 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 6: 
{
unsigned short v97;
signed char v98;
signed short v99;
unsigned short v100;
v97 = v87 + 7;
v98 = 1 - v88;
v99 = 3 + v91;
v100 = v23 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 8: 
{
unsigned short v101;
signed char v102;
signed short v103;
unsigned short v104;
v101 = 6 - v87;
v102 = -2 + -4;
v103 = v91 + -4;
v104 = v23 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned int v107 = 0U;
signed short v106 = 0;
unsigned int v105 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
