#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
signed int v7 (unsigned short, signed char);
signed int (*v8) (unsigned short, signed char) = v7;
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
void v11 (signed char, signed short);
void (*v12) (signed char, signed short) = v11;
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern unsigned char v15 (unsigned char, unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned char, unsigned short, signed short, signed short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed short, signed int);
extern signed int (*v20) (unsigned int, signed short, signed int);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern unsigned int v23 (unsigned char, signed short, unsigned int, signed char);
extern unsigned int (*v24) (unsigned char, signed short, unsigned int, signed char);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, unsigned int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = 2;
signed int v51 = 0;
signed short v50 = -1;

void v21 (unsigned int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 2;
signed int v55 = 2;
signed char v54 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v57;
unsigned short v58;
unsigned char v59;
signed short v60;
unsigned char v61;
v57 = v53 - 2U;
v58 = 6 - 0;
v59 = 2 + v56;
v60 = -2 - 2;
v61 = v3 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 3: 
{
unsigned int v62;
unsigned short v63;
unsigned char v64;
signed short v65;
unsigned char v66;
v62 = 0U - 0U;
v63 = 0 + 1;
v64 = 1 - 0;
v65 = 1 + -3;
v66 = v3 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 19: 
return;
default: abort ();
}
}
}
}

void v11 (signed char v67, signed short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -2;
signed short v70 = -1;
unsigned short v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v72, signed char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 0U;
unsigned int v75 = 2U;
unsigned int v74 = 0U;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v77;
unsigned short v78;
unsigned char v79;
signed short v80;
unsigned char v81;
v77 = v76 - v75;
v78 = 5 - 0;
v79 = 2 + 6;
v80 = -1 + 2;
v81 = v3 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 7: 
{
unsigned int v82;
unsigned short v83;
unsigned char v84;
signed short v85;
unsigned char v86;
v82 = v75 + 4U;
v83 = v72 + 7;
v84 = 0 + 5;
v85 = 3 + 3;
v86 = v3 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 9: 
{
unsigned int v87;
unsigned short v88;
unsigned char v89;
signed short v90;
unsigned char v91;
v87 = v76 - v75;
v88 = v72 + 5;
v89 = 5 - 6;
v90 = 2 + 0;
v91 = v3 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return -1;
case 13: 
return -2;
case 15: 
return -2;
case 17: 
return 0;
default: abort ();
}
}
}
}
