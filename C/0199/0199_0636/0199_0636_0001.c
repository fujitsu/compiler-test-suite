#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
signed short v3 (unsigned int);
signed short (*v4) (unsigned int) = v3;
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (unsigned char, unsigned short);
extern signed char (*v10) (unsigned char, unsigned short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (signed char, signed int, unsigned int);
extern signed char (*v14) (signed char, signed int, unsigned int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (signed char, signed short, signed int, signed int);
extern unsigned int (*v20) (signed char, signed short, signed int, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
static signed short v25 (signed short, unsigned char, unsigned short, signed char);
static signed short (*v26) (signed short, unsigned char, unsigned short, signed char) = v25;
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
extern signed int v29 (unsigned char, signed int, signed char);
extern signed int (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = 3;
signed int v54 = 0;
unsigned int v53 = 4U;

static signed short v25 (signed short v56, unsigned char v57, unsigned short v58, signed char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 1;
signed int v61 = -1;
signed short v60 = -4;
trace++;
switch (trace)
{
case 2: 
return v56;
case 4: 
return v60;
case 6: 
return -2;
case 8: 
return v56;
case 10: 
return v60;
default: abort ();
}
}
}
}

signed int v5 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -1;
signed short v65 = -3;
signed char v64 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v67;
unsigned char v68;
unsigned short v69;
signed char v70;
signed short v71;
v67 = -3 + v65;
v68 = 1 + 3;
v69 = 6 + 0;
v70 = v64 - -4;
v71 = v25 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 3: 
{
signed short v72;
unsigned char v73;
unsigned short v74;
signed char v75;
signed short v76;
v72 = v63 + -1;
v73 = 0 - 1;
v74 = 3 - 3;
v75 = -1 - v64;
v76 = v25 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 5: 
{
signed short v77;
unsigned char v78;
unsigned short v79;
signed char v80;
signed short v81;
v77 = -4 - v65;
v78 = 6 - 7;
v79 = 0 - 4;
v80 = -2 - -2;
v81 = v25 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 7: 
{
signed short v82;
unsigned char v83;
unsigned short v84;
signed char v85;
signed short v86;
v82 = v65 - v63;
v83 = 7 - 1;
v84 = 4 + 5;
v85 = v64 + v64;
v86 = v25 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 9: 
{
signed short v87;
unsigned char v88;
unsigned short v89;
signed char v90;
signed short v91;
v87 = v63 + v63;
v88 = 4 + 6;
v89 = 4 + 2;
v90 = v64 - 0;
v91 = v25 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = -3;
signed int v94 = 0;
signed int v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
