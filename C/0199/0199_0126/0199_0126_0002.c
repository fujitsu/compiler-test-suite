#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned int, unsigned short, signed char);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
signed int v7 (unsigned short, unsigned int);
signed int (*v8) (unsigned short, unsigned int) = v7;
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned short v13 (unsigned char, signed short, signed short, unsigned short);
unsigned short (*v14) (unsigned char, signed short, signed short, unsigned short) = v13;
extern void v15 (unsigned char, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed char);
signed int v17 (unsigned char);
signed int (*v18) (unsigned char) = v17;
unsigned short v19 (unsigned char, unsigned char);
unsigned short (*v20) (unsigned char, unsigned char) = v19;
signed char v21 (unsigned char);
signed char (*v22) (unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
signed short v27 (signed int, signed int);
signed short (*v28) (signed int, signed int) = v27;
extern unsigned int v29 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v30) (signed short, unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v74 = 3;
unsigned int v73 = 4U;
signed int v72 = -1;

signed short v27 (signed int v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -4;
unsigned char v78 = 7;
signed char v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
signed char v82 = 2;
signed char v81 = -4;
signed short v80 = 1;
trace++;
switch (trace)
{
case 2: 
return 5U;
default: abort ();
}
}
}
}

signed char v21 (unsigned char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -1;
signed int v85 = 2;
signed int v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v87, unsigned char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -1;
unsigned char v90 = 1;
unsigned short v89 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 3;
signed short v94 = -1;
signed short v93 = 2;
trace++;
switch (trace)
{
case 8: 
return 1;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v96, signed short v97, signed short v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 1U;
unsigned short v101 = 1;
signed int v100 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v103;
signed int v104;
v103 = 5 - 4;
v104 = v17 (v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
return v99;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 2;
signed short v108 = -4;
signed char v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
