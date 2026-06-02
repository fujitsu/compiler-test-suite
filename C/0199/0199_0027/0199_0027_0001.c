#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern void v3 (unsigned int, unsigned short, signed short, unsigned short);
extern void (*v4) (unsigned int, unsigned short, signed short, unsigned short);
void v5 (unsigned char);
void (*v6) (unsigned char) = v5;
extern unsigned short v7 (unsigned int, signed short, signed short);
extern unsigned short (*v8) (unsigned int, signed short, signed short);
extern unsigned int v9 (signed int, signed int, unsigned short);
extern unsigned int (*v10) (signed int, signed int, unsigned short);
extern signed short v11 (unsigned int, unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned short, unsigned int, unsigned short);
void v13 (signed char, unsigned short, signed int, unsigned short);
void (*v14) (signed char, unsigned short, signed int, unsigned short) = v13;
extern signed int v15 (unsigned int, unsigned int);
extern signed int (*v16) (unsigned int, unsigned int);
extern signed short v17 (signed short, unsigned int, signed char);
extern signed short (*v18) (signed short, unsigned int, signed char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed short v21 (unsigned short, unsigned int, signed short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned int, signed short, unsigned char);
signed short v23 (unsigned char, signed char, unsigned char);
signed short (*v24) (unsigned char, signed char, unsigned char) = v23;
extern signed char v25 (signed short, signed int, unsigned int, signed short);
extern signed char (*v26) (signed short, signed int, unsigned int, signed short);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned short v29 (unsigned short, signed short);
extern unsigned short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 7;
unsigned short v63 = 2;
unsigned short v62 = 1;

unsigned short v27 (void)
{
{
for (;;) {
unsigned short v67 = 5;
signed char v66 = -3;
unsigned int v65 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned char v68, signed char v69, unsigned char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 5U;
signed char v72 = -3;
unsigned int v71 = 6U;
trace++;
switch (trace)
{
case 2: 
return -4;
case 5: 
return 3;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned short v76 = 4;
unsigned char v75 = 0;
signed char v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v77, unsigned short v78, signed int v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -2;
signed int v82 = 3;
signed short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 4;
unsigned int v86 = 7U;
unsigned int v85 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v88;
signed char v89;
unsigned char v90;
signed short v91;
v88 = 2 + 3;
v89 = -1 + 3;
v90 = v84 - 2;
v91 = v23 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 3: 
{
unsigned int v92;
unsigned short v93;
unsigned int v94;
unsigned short v95;
signed short v96;
v92 = v86 + v86;
v93 = 3 - 1;
v94 = v86 + 1U;
v95 = 1 - 6;
v96 = v11 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
