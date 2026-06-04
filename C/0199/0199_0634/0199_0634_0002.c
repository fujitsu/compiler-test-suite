#include <stdlib.h>
unsigned short v1 (signed short);
unsigned short (*v2) (signed short) = v1;
extern signed short v3 (signed char, signed char, unsigned char);
extern signed short (*v4) (signed char, signed char, unsigned char);
extern signed int v5 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned short v7 (unsigned short);
unsigned short (*v8) (unsigned short) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
unsigned char v13 (unsigned short, unsigned short, signed char);
unsigned char (*v14) (unsigned short, unsigned short, signed char) = v13;
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned char v19 (signed short, signed short, unsigned int, unsigned char);
unsigned char (*v20) (signed short, signed short, unsigned int, unsigned char) = v19;
signed char v21 (signed short, unsigned char, unsigned short);
signed char (*v22) (signed short, unsigned char, unsigned short) = v21;
extern void v23 (signed char, signed int);
extern void (*v24) (signed char, signed int);
extern unsigned short v25 (signed char, signed int, signed short, unsigned int);
extern unsigned short (*v26) (signed char, signed int, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = 3;
signed short v62 = 2;
unsigned char v61 = 1;

void v29 (void)
{
{
for (;;) {
signed char v66 = 3;
unsigned char v65 = 3;
signed char v64 = 0;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
{
signed char v67;
signed char v68;
unsigned char v69;
signed short v70;
v67 = 2 + v66;
v68 = v66 + v64;
v69 = v65 - 3;
v70 = v3 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v21 (signed short v71, unsigned char v72, unsigned short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 5;
signed char v75 = -1;
signed char v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v77, signed short v78, unsigned int v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 1;
unsigned int v82 = 5U;
unsigned short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v84, unsigned short v85, signed char v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 1;
unsigned int v88 = 7U;
unsigned char v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 6;
signed char v92 = 1;
unsigned char v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 2;
signed short v96 = 2;
signed char v95 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v98;
signed char v99;
unsigned char v100;
signed short v101;
v98 = -3 - v95;
v99 = v95 - v95;
v100 = 6 - 3;
v101 = v3 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 4: 
{
unsigned short v102;
signed char v103;
v102 = 2 + v97;
v103 = v15 (v102);
history[history_index++] = (int)v103;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
