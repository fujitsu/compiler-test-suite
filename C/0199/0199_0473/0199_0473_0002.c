#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
extern signed int v7 (signed char, unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (signed char, unsigned char, unsigned short, unsigned int);
unsigned short v9 (unsigned int, signed short, unsigned int, signed short);
unsigned short (*v10) (unsigned int, signed short, unsigned int, signed short) = v9;
extern unsigned char v11 (signed short, unsigned int);
extern unsigned char (*v12) (signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
unsigned int v17 (unsigned short, unsigned short, unsigned int, unsigned int);
unsigned int (*v18) (unsigned short, unsigned short, unsigned int, unsigned int) = v17;
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
unsigned short v25 (signed int, unsigned int, unsigned char, signed short);
unsigned short (*v26) (signed int, unsigned int, unsigned char, signed short) = v25;
extern unsigned char v27 (signed short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (signed short, unsigned char, signed short, unsigned int);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v56 = 2;
unsigned char v55 = 2;
signed char v54 = 0;

signed short v29 (void)
{
{
for (;;) {
unsigned short v59 = 5;
signed short v58 = 3;
signed short v57 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed int v60, unsigned int v61, unsigned char v62, signed short v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 4U;
unsigned int v65 = 3U;
unsigned int v64 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = 2;
unsigned char v69 = 3;
signed short v68 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v71, unsigned short v72, unsigned int v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 3;
signed char v76 = -3;
unsigned int v75 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -4;
signed short v80 = 2;
signed int v79 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed short v82;
unsigned char v83;
signed short v84;
unsigned int v85;
unsigned char v86;
v82 = v81 + v80;
v83 = 2 + 1;
v84 = -1 - -2;
v85 = 4U + 0U;
v86 = v27 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 3: 
return;
case 6: 
{
signed short v87;
unsigned char v88;
signed short v89;
unsigned int v90;
unsigned char v91;
v87 = v80 + v80;
v88 = 1 + 6;
v89 = v81 + 1;
v90 = 4U + 7U;
v91 = v27 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 8: 
return;
case 10: 
{
signed short v92;
unsigned char v93;
signed short v94;
unsigned int v95;
unsigned char v96;
v92 = -3 + v81;
v93 = 5 + 1;
v94 = v81 - v80;
v95 = 2U - 2U;
v96 = v27 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v97, signed short v98, unsigned int v99, signed short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 3;
signed short v102 = 0;
unsigned int v101 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
