#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
unsigned char v5 (unsigned char, signed short, signed int, unsigned int);
unsigned char (*v6) (unsigned char, signed short, signed int, unsigned int) = v5;
extern void v7 (unsigned int, signed int, signed short);
extern void (*v8) (unsigned int, signed int, signed short);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (unsigned short, signed int, signed int, unsigned int);
extern unsigned short (*v18) (unsigned short, signed int, signed int, unsigned int);
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short);
extern signed char v25 (unsigned short, signed int, signed char, signed short);
extern signed char (*v26) (unsigned short, signed int, signed char, signed short);
extern void v27 (signed char, signed short);
extern void (*v28) (signed char, signed short);
void v29 (signed int, signed short);
void (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 0;
unsigned short v48 = 1;
unsigned short v47 = 5;

void v29 (signed int v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -4;
signed short v53 = -2;
signed char v52 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 1;
unsigned char v57 = 3;
unsigned short v56 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v59;
signed int v60;
signed char v61;
signed short v62;
signed char v63;
v59 = v56 + v56;
v60 = -1 + v55;
v61 = v58 + -3;
v62 = -2 - -3;
v63 = v25 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 5: 
{
unsigned short v64;
signed int v65;
signed char v66;
signed short v67;
signed char v68;
v64 = 2 + 2;
v65 = 3 - v55;
v66 = v58 + v58;
v67 = 3 + -4;
v68 = v25 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 7: 
{
unsigned int v69;
unsigned short v70;
unsigned char v71;
v69 = 2U - 4U;
v70 = v56 - v56;
v71 = v23 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 9: 
{
unsigned short v72;
signed int v73;
signed char v74;
signed short v75;
signed char v76;
v72 = 5 - 5;
v73 = 1 - -4;
v74 = -1 - -1;
v75 = 1 + 1;
v76 = v25 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v77, signed short v78, signed int v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 1;
signed char v82 = -1;
signed short v81 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v84;
signed int v85;
signed int v86;
unsigned int v87;
unsigned short v88;
v84 = 3 + 3;
v85 = v79 - -2;
v86 = v79 - -2;
v87 = 6U + 2U;
v88 = v17 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}
