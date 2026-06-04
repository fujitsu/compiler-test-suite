#include <stdlib.h>
extern signed int v1 (signed int, signed char, unsigned int);
extern signed int (*v2) (signed int, signed char, unsigned int);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
void v5 (signed int, signed short, signed char);
void (*v6) (signed int, signed short, signed char) = v5;
extern unsigned char v7 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v8) (signed short, unsigned char, unsigned char, signed char);
void v9 (signed short, signed char, signed short, unsigned short);
void (*v10) (signed short, signed char, signed short, unsigned short) = v9;
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (signed short, signed short, signed short, unsigned short);
extern signed int (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (signed char, unsigned short, unsigned short);
extern signed short (*v20) (signed char, unsigned short, unsigned short);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed char v23 (signed char, unsigned short);
extern signed char (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
signed short v27 (void);
signed short (*v28) (void) = v27;
signed char v29 (unsigned short, unsigned char, unsigned char);
signed char (*v30) (unsigned short, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 1;
signed short v62 = 0;
signed short v61 = -4;

signed char v29 (unsigned short v64, unsigned char v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 5;
unsigned int v68 = 2U;
signed short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (void)
{
{
for (;;) {
signed int v72 = -3;
signed short v71 = -1;
signed short v70 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v75 = 7U;
signed short v74 = 1;
unsigned int v73 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v76, signed char v77, signed short v78, unsigned short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 3;
unsigned char v81 = 4;
unsigned short v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v83, signed short v84, signed char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 3;
signed short v87 = -1;
signed short v86 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed char v89;
unsigned short v90;
signed char v91;
v89 = 2 - -2;
v90 = 5 + 3;
v91 = v23 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 5: 
{
signed char v92;
unsigned short v93;
signed char v94;
v92 = 3 - -2;
v93 = 4 + 4;
v94 = v23 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 7: 
{
signed char v95;
unsigned short v96;
signed char v97;
v95 = 1 + v85;
v96 = 5 + 6;
v97 = v23 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
{
signed char v98;
unsigned short v99;
signed char v100;
v98 = v85 + v85;
v99 = 4 + 3;
v100 = v23 (v98, v99);
history[history_index++] = (int)v100;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned short v103 = 7;
unsigned char v102 = 7;
unsigned short v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
