#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, signed int, signed int, signed short);
extern unsigned char (*v4) (unsigned int, signed int, signed int, signed short);
signed int v5 (unsigned int);
signed int (*v6) (unsigned int) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
signed int v13 (unsigned int, unsigned int, unsigned short);
signed int (*v14) (unsigned int, unsigned int, unsigned short) = v13;
extern unsigned int v15 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned int, signed short);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short);
extern unsigned char v19 (unsigned int, signed short, signed int, unsigned char);
extern unsigned char (*v20) (unsigned int, signed short, signed int, unsigned char);
unsigned int v21 (unsigned char);
unsigned int (*v22) (unsigned char) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
unsigned int v25 (unsigned char, unsigned int, unsigned int, unsigned int);
unsigned int (*v26) (unsigned char, unsigned int, unsigned int, unsigned int) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 0;
unsigned char v83 = 0;
signed int v82 = 3;

unsigned char v27 (void)
{
{
for (;;) {
signed int v87 = -2;
unsigned int v86 = 3U;
signed short v85 = 3;
trace++;
switch (trace)
{
case 9: 
return 1;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned char v88, unsigned int v89, unsigned int v90, unsigned int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = 1;
unsigned short v93 = 5;
unsigned char v92 = 6;
trace++;
switch (trace)
{
case 4: 
return v91;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 7U;
signed short v97 = 0;
unsigned char v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v99, unsigned int v100, unsigned short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 2;
signed int v103 = -1;
unsigned short v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 5;
unsigned char v107 = 4;
signed short v106 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v109;
v109 = v9 ();
history[history_index++] = (int)v109;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
