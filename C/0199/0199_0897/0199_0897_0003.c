#include <stdlib.h>
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern unsigned char v5 (signed int, unsigned short, signed char);
extern unsigned char (*v6) (signed int, unsigned short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
unsigned int v15 (signed int, unsigned short, unsigned int, unsigned char);
unsigned int (*v16) (signed int, unsigned short, unsigned int, unsigned char) = v15;
extern void v17 (void);
extern void (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed char v21 (unsigned char, signed char, signed short, signed char);
extern signed char (*v22) (unsigned char, signed char, signed short, signed char);
signed int v23 (signed short, unsigned int, unsigned int, unsigned short);
signed int (*v24) (signed short, unsigned int, unsigned int, unsigned short) = v23;
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v29 (signed short, signed char);
extern void (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 1;
signed char v85 = 0;
signed int v84 = 3;

signed int v23 (signed short v87, unsigned int v88, unsigned int v89, unsigned short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 1;
signed short v92 = -4;
signed char v91 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed short v96 = -2;
unsigned char v95 = 0;
unsigned short v94 = 7;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v97;
signed char v98;
signed short v99;
signed char v100;
signed char v101;
v97 = v95 - 7;
v98 = -1 - -3;
v99 = v96 + -3;
v100 = 1 + 0;
v101 = v21 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
signed short v102;
signed int v103;
v102 = 0 + v96;
v103 = v25 (v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return v96;
default: abort ();
}
}
}
}

unsigned int v15 (signed int v104, unsigned short v105, unsigned int v106, unsigned char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = -2;
unsigned char v109 = 5;
signed short v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -1;
unsigned int v113 = 1U;
unsigned int v112 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
