#include <stdlib.h>
signed int v1 (signed short, unsigned char, signed short, unsigned int);
signed int (*v2) (signed short, unsigned char, signed short, unsigned int) = v1;
extern signed char v3 (signed char, unsigned int, signed short);
extern signed char (*v4) (signed char, unsigned int, signed short);
extern void v5 (void);
extern void (*v6) (void);
static signed short v7 (unsigned char, signed int, unsigned int);
static signed short (*v8) (unsigned char, signed int, unsigned int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (unsigned int, signed short, unsigned short, signed short);
extern void (*v12) (unsigned int, signed short, unsigned short, signed short);
extern signed char v13 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v14) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned short v17 (unsigned int, signed short, signed int, signed short);
unsigned short (*v18) (unsigned int, signed short, signed int, signed short) = v17;
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed char v23 (signed char, signed short);
extern signed char (*v24) (signed char, signed short);
unsigned int v25 (unsigned char);
unsigned int (*v26) (unsigned char) = v25;
extern unsigned int v27 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v28) (signed char, unsigned int, signed char, signed char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = -4;
unsigned short v58 = 5;
signed char v57 = 0;

unsigned int v25 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 3;
unsigned char v62 = 3;
signed short v61 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v64, signed short v65, signed int v66, signed short v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 2;
signed short v69 = 2;
unsigned short v68 = 3;
trace++;
switch (trace)
{
case 6: 
return 4;
case 9: 
return 6;
default: abort ();
}
}
}
}

static signed short v7 (unsigned char v71, signed int v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 1;
unsigned int v75 = 6U;
unsigned char v74 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v77;
unsigned int v78;
unsigned short v79;
v77 = 3 - 0;
v78 = v75 + v75;
v79 = v21 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 5: 
{
unsigned int v80;
signed short v81;
signed int v82;
signed short v83;
unsigned short v84;
v80 = 7U + v75;
v81 = -3 + 2;
v82 = v72 - v76;
v83 = 1 + 0;
v84 = v17 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 7: 
{
signed int v85;
v85 = v9 ();
history[history_index++] = (int)v85;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed int v1 (signed short v86, unsigned char v87, signed short v88, unsigned int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
signed char v91 = -3;
unsigned int v90 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v93;
unsigned int v94;
unsigned short v95;
v93 = 6 - 3;
v94 = v89 - v89;
v95 = v21 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 2: 
{
unsigned char v96;
signed int v97;
unsigned int v98;
signed short v99;
v96 = 2 - 4;
v97 = 1 + -1;
v98 = v90 + 4U;
v99 = v7 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
