#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned char v3 (signed short, unsigned int, signed char, unsigned int);
unsigned char (*v4) (signed short, unsigned int, signed char, unsigned int) = v3;
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
signed int v7 (unsigned short, signed char);
signed int (*v8) (unsigned short, signed char) = v7;
extern unsigned short v9 (signed short, signed short, unsigned int, signed short);
extern unsigned short (*v10) (signed short, signed short, unsigned int, signed short);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed int v13 (signed short, signed short, unsigned int);
extern signed int (*v14) (signed short, signed short, unsigned int);
extern signed short v15 (unsigned int, signed char);
extern signed short (*v16) (unsigned int, signed char);
signed int v17 (unsigned char, unsigned short);
signed int (*v18) (unsigned char, unsigned short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
void v21 (unsigned char, signed int, signed short, signed char);
void (*v22) (unsigned char, signed int, signed short, signed char) = v21;
extern void v23 (unsigned int, unsigned short, signed char, signed int);
extern void (*v24) (unsigned int, unsigned short, signed char, signed int);
extern signed short v25 (signed short, unsigned short, signed int, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int, signed int);
extern void v27 (unsigned int, unsigned int, signed char);
extern void (*v28) (unsigned int, unsigned int, signed char);
extern unsigned short v29 (signed short, signed int, unsigned int);
extern unsigned short (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 0;
signed short v60 = -4;
unsigned short v59 = 0;

void v21 (unsigned char v62, signed int v63, signed short v64, signed char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 2;
unsigned int v67 = 1U;
signed short v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 1;
signed int v72 = -1;
signed short v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v74, signed char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 7;
signed char v77 = -3;
unsigned char v76 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v79;
unsigned short v80;
signed int v81;
signed int v82;
signed short v83;
v79 = 1 + -2;
v80 = 4 + v74;
v81 = 1 + 2;
v82 = 0 - 3;
v83 = v25 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
signed short v84;
unsigned short v85;
signed int v86;
signed int v87;
signed short v88;
v84 = -3 - -4;
v85 = v74 + 4;
v86 = -3 - -1;
v87 = -1 - -1;
v88 = v25 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 5: 
{
signed char v89;
v89 = v19 ();
history[history_index++] = (int)v89;
}
break;
case 7: 
{
signed short v90;
signed int v91;
unsigned int v92;
unsigned short v93;
v90 = -1 + 1;
v91 = -1 - 2;
v92 = 3U + 3U;
v93 = v29 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 9: 
{
signed short v94;
unsigned short v95;
signed int v96;
signed int v97;
signed short v98;
v94 = 0 + 0;
v95 = 5 - v78;
v96 = -3 - 1;
v97 = -4 - 2;
v98 = v25 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 11: 
return -2;
case 13: 
return -3;
case 15: 
return 1;
case 17: 
return 3;
default: abort ();
}
}
}
}

signed short v5 (signed int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 1;
signed short v101 = -1;
signed short v100 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v103, unsigned int v104, signed char v105, unsigned int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 2;
unsigned int v108 = 0U;
signed int v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
