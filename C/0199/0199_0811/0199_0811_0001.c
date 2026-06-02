#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern signed short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern signed short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned int v7 (signed short, unsigned int, signed char);
extern unsigned int (*v8) (signed short, unsigned int, signed char);
extern void v9 (unsigned short, signed int, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short);
extern unsigned int v11 (unsigned short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
void v17 (unsigned int, unsigned short);
void (*v18) (unsigned int, unsigned short) = v17;
extern unsigned int v19 (unsigned int, unsigned char, signed short);
extern unsigned int (*v20) (unsigned int, unsigned char, signed short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
static signed short v25 (unsigned char, signed int, signed short);
static signed short (*v26) (unsigned char, signed int, signed short) = v25;
unsigned short v27 (signed char, unsigned short);
unsigned short (*v28) (signed char, unsigned short) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 5;
unsigned char v57 = 7;
unsigned int v56 = 3U;

unsigned short v27 (signed char v59, unsigned short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -4;
unsigned int v62 = 4U;
signed int v61 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v25 (unsigned char v64, signed int v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 5;
unsigned int v68 = 0U;
signed int v67 = -1;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v70;
unsigned int v71;
signed char v72;
unsigned int v73;
v70 = 3 - 1;
v71 = 1U - v68;
v72 = 1 + -1;
v73 = v11 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return v66;
default: abort ();
}
}
}
}

void v17 (unsigned int v74, unsigned short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 0;
unsigned short v77 = 5;
signed short v76 = 3;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
{
unsigned int v79;
unsigned char v80;
signed short v81;
unsigned int v82;
v79 = v74 - 1U;
v80 = 3 - 6;
v81 = -3 - v78;
v82 = v19 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 6: 
{
unsigned int v83;
unsigned char v84;
signed short v85;
unsigned int v86;
v83 = 1U + 1U;
v84 = 1 + 1;
v85 = v76 - v78;
v86 = v19 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 8: 
{
unsigned char v87;
signed int v88;
signed short v89;
signed short v90;
v87 = 0 + 1;
v88 = 0 + -2;
v89 = v76 - 1;
v90 = v25 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v1 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 7U;
signed int v93 = 1;
signed short v92 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v95;
unsigned int v96;
unsigned int v97;
unsigned short v98;
v95 = 5 - 2;
v96 = v94 + 5U;
v97 = 5U + v91;
v98 = v21 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
