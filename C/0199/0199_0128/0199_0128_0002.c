#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned short, signed char, unsigned int);
extern signed char (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed char);
extern unsigned int (*v6) (unsigned int, signed char);
unsigned short v7 (unsigned short, unsigned short, signed short);
unsigned short (*v8) (unsigned short, unsigned short, signed short) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
signed char v13 (signed int, unsigned short, unsigned int);
signed char (*v14) (signed int, unsigned short, unsigned int) = v13;
signed int v15 (unsigned int, signed short, signed int);
signed int (*v16) (unsigned int, signed short, signed int) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int);
extern void v23 (unsigned short, signed short);
extern void (*v24) (unsigned short, signed short);
unsigned short v25 (unsigned int, unsigned int);
unsigned short (*v26) (unsigned int, unsigned int) = v25;
extern unsigned char v27 (signed int, signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed int, signed short, signed short, unsigned short);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 0U;
signed char v62 = 3;
signed short v61 = 2;

unsigned short v25 (unsigned int v64, unsigned int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 2;
unsigned short v67 = 1;
unsigned int v66 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed int v69;
signed short v70;
signed short v71;
unsigned short v72;
unsigned char v73;
v69 = 3 + 1;
v70 = 1 - 1;
v71 = 2 + 3;
v72 = v67 - v67;
v73 = v27 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 3: 
{
signed int v74;
signed short v75;
signed short v76;
unsigned short v77;
unsigned char v78;
v74 = -2 - -1;
v75 = 1 - -3;
v76 = 3 + -3;
v77 = v68 - v68;
v78 = v27 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
{
signed int v79;
signed short v80;
signed short v81;
unsigned short v82;
unsigned char v83;
v79 = 2 - 2;
v80 = -1 + -4;
v81 = -2 - -2;
v82 = v68 + v67;
v83 = v27 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 7: 
{
signed int v84;
signed short v85;
signed short v86;
unsigned short v87;
unsigned char v88;
v84 = -3 + -3;
v85 = 0 + -3;
v86 = 3 - 0;
v87 = v68 - v67;
v88 = v27 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 9: 
{
signed int v89;
signed short v90;
signed short v91;
unsigned short v92;
unsigned char v93;
v89 = 1 - 1;
v90 = 2 + -2;
v91 = 1 + -1;
v92 = v68 + v68;
v93 = v27 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 11: 
return v68;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v94, signed short v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 4;
unsigned char v98 = 7;
signed int v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v100, unsigned short v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 6;
signed int v104 = 2;
signed short v103 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -1;
signed int v108 = 0;
unsigned short v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed short v112 = -4;
signed int v111 = -3;
signed int v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v113, unsigned short v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 0U;
unsigned short v117 = 1;
unsigned char v116 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
