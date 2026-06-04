#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern signed int v3 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v4) (unsigned int, unsigned char, unsigned char, unsigned short);
void v5 (unsigned int, signed char);
void (*v6) (unsigned int, signed char) = v5;
extern unsigned int v7 (unsigned char, signed short, unsigned short);
extern unsigned int (*v8) (unsigned char, signed short, unsigned short);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern unsigned short v11 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned char, signed short);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed int v15 (signed int, signed int, signed char);
extern signed int (*v16) (signed int, signed int, signed char);
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
extern signed char v21 (unsigned char, signed int, signed int);
extern signed char (*v22) (unsigned char, signed int, signed int);
extern void v23 (signed int, unsigned int, signed char);
extern void (*v24) (signed int, unsigned int, signed char);
unsigned int v25 (signed short);
unsigned int (*v26) (signed short) = v25;
unsigned char v27 (unsigned short, unsigned int, signed char);
unsigned char (*v28) (unsigned short, unsigned int, signed char) = v27;
extern unsigned short v29 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v58 = 1;
unsigned char v57 = 2;
signed char v56 = 2;

unsigned char v27 (unsigned short v59, unsigned int v60, signed char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 2;
signed char v63 = -3;
unsigned int v62 = 2U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v65;
signed char v66;
unsigned short v67;
signed char v68;
unsigned short v69;
v65 = 6 + v59;
v66 = -4 - v63;
v67 = v64 - 2;
v68 = -1 + v63;
v69 = v29 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 5: 
{
unsigned short v70;
signed char v71;
unsigned short v72;
signed char v73;
unsigned short v74;
v70 = 6 - v59;
v71 = 2 + v63;
v72 = v64 - v59;
v73 = -1 + v63;
v74 = v29 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 7: 
{
unsigned short v75;
signed char v76;
unsigned short v77;
signed char v78;
unsigned short v79;
v75 = v64 + v64;
v76 = v61 - -2;
v77 = 4 + v64;
v78 = 2 - 3;
v79 = v29 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
unsigned short v80;
signed char v81;
unsigned short v82;
signed char v83;
unsigned short v84;
v80 = 4 + v64;
v81 = v61 + v63;
v82 = v64 + 1;
v83 = 0 - v61;
v84 = v29 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned int v25 (signed short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 2;
unsigned short v87 = 6;
signed short v86 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 1;
unsigned char v91 = 3;
signed char v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 5U;
unsigned int v96 = 3U;
signed short v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
