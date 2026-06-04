#include <stdlib.h>
extern unsigned char v1 (signed short, signed short, unsigned char);
extern unsigned char (*v2) (signed short, signed short, unsigned char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
signed char v5 (unsigned int, signed char, unsigned int);
signed char (*v6) (unsigned int, signed char, unsigned int) = v5;
extern signed char v7 (signed short, unsigned int, unsigned short);
extern signed char (*v8) (signed short, unsigned int, unsigned short);
extern void v9 (unsigned short, signed short);
extern void (*v10) (unsigned short, signed short);
extern signed char v11 (unsigned short, signed short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed short, signed int, unsigned short);
unsigned short v13 (unsigned int, signed int, unsigned short, signed short);
unsigned short (*v14) (unsigned int, signed int, unsigned short, signed short) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed short v23 (unsigned char, unsigned short, unsigned char);
extern signed short (*v24) (unsigned char, unsigned short, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern signed char v27 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v28) (signed char, unsigned char, unsigned int, unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v75 = 0;
signed int v74 = 1;
signed short v73 = -1;

void v29 (void)
{
{
for (;;) {
unsigned char v78 = 2;
unsigned short v77 = 4;
unsigned short v76 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
unsigned short v81 = 4;
unsigned char v80 = 0;
unsigned short v79 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v84 = 3;
unsigned char v83 = 2;
signed int v82 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v85;
unsigned short v86;
unsigned char v87;
signed short v88;
v85 = 4 + v83;
v86 = 7 + 1;
v87 = 5 + 3;
v88 = v23 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v89, signed int v90, unsigned short v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 1;
signed short v94 = -3;
signed int v93 = -2;
trace++;
switch (trace)
{
case 5: 
return v91;
case 7: 
{
signed int v96;
unsigned int v97;
v96 = v90 - v93;
v97 = v25 (v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
{
signed int v98;
unsigned int v99;
v98 = v90 + v90;
v99 = v25 (v98);
history[history_index++] = (int)v99;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed char v5 (unsigned int v100, signed char v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 7;
unsigned short v104 = 0;
unsigned char v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
