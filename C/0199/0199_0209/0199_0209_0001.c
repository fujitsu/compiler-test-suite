#include <stdlib.h>
unsigned int v1 (signed int, signed char, signed short, unsigned int);
unsigned int (*v2) (signed int, signed char, signed short, unsigned int) = v1;
unsigned short v3 (signed short, signed char);
unsigned short (*v4) (signed short, signed char) = v3;
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern void v7 (unsigned char, signed short, signed char, unsigned short);
extern void (*v8) (unsigned char, signed short, signed char, unsigned short);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
signed char v15 (signed char, unsigned int, signed char, signed char);
signed char (*v16) (signed char, unsigned int, signed char, signed char) = v15;
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern unsigned int v19 (unsigned short, signed int, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, signed int, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (signed short, unsigned int, unsigned char);
extern unsigned short (*v28) (signed short, unsigned int, unsigned char);
signed int v29 (signed short, signed short);
signed int (*v30) (signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = 3;
unsigned int v51 = 2U;
unsigned char v50 = 1;

signed int v29 (signed short v53, signed short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -1;
unsigned short v56 = 4;
unsigned char v55 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v58, unsigned int v59, signed char v60, signed char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 2;
unsigned short v63 = 1;
signed short v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -3;
unsigned short v68 = 4;
signed int v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v70, signed char v71, signed short v72, unsigned int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -1;
signed int v75 = -2;
unsigned int v74 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed short v77;
unsigned int v78;
unsigned char v79;
unsigned short v80;
v77 = v72 + -1;
v78 = v73 - 7U;
v79 = 4 - 5;
v80 = v27 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 2: 
{
unsigned short v81;
signed int v82;
unsigned short v83;
unsigned short v84;
unsigned int v85;
v81 = 1 + 4;
v82 = v70 - v76;
v83 = 0 - 2;
v84 = 3 - 1;
v85 = v19 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 4: 
{
unsigned short v86;
signed int v87;
unsigned short v88;
unsigned short v89;
unsigned int v90;
v86 = 3 - 1;
v87 = v70 - v75;
v88 = 7 - 6;
v89 = 4 + 6;
v90 = v19 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 6: 
{
unsigned short v91;
signed int v92;
unsigned short v93;
unsigned short v94;
unsigned int v95;
v91 = 4 + 0;
v92 = 0 + v75;
v93 = 0 - 3;
v94 = 0 - 7;
v95 = v19 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 8: 
{
signed int v96;
unsigned char v97;
v96 = -2 - v70;
v97 = v13 (v96);
history[history_index++] = (int)v97;
}
break;
case 10: 
{
v11 ();
}
break;
case 12: 
return v73;
default: abort ();
}
}
}
}
