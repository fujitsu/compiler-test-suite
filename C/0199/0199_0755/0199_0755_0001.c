#include <stdlib.h>
signed int v1 (signed int);
signed int (*v2) (signed int) = v1;
extern unsigned int v3 (unsigned int, signed int, unsigned short, signed char);
extern unsigned int (*v4) (unsigned int, signed int, unsigned short, signed char);
extern unsigned short v5 (signed int, signed char);
extern unsigned short (*v6) (signed int, signed char);
extern unsigned short v7 (signed short, signed int, signed int, signed int);
extern unsigned short (*v8) (signed short, signed int, signed int, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed int v13 (unsigned char, unsigned short, unsigned char);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char);
void v15 (unsigned int, unsigned int, unsigned short);
void (*v16) (unsigned int, unsigned int, unsigned short) = v15;
static signed short v17 (unsigned int, signed short);
static signed short (*v18) (unsigned int, signed short) = v17;
extern unsigned int v19 (signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char, unsigned char);
extern unsigned char v21 (signed char, signed int, signed short);
extern unsigned char (*v22) (signed char, signed int, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (unsigned short, signed int, unsigned int);
extern signed int (*v26) (unsigned short, signed int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned char (*v28) (unsigned short, signed int, unsigned int, unsigned int);
static void v29 (signed short, unsigned short, unsigned int);
static void (*v30) (signed short, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v46 = 2;
unsigned char v45 = 5;
unsigned char v44 = 0;

static void v29 (signed short v47, unsigned short v48, unsigned int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 2;
unsigned short v51 = 6;
signed char v50 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v53;
signed int v54;
unsigned int v55;
unsigned int v56;
unsigned char v57;
v53 = v48 + v48;
v54 = 1 - 2;
v55 = v49 + v49;
v56 = v49 - 2U;
v57 = v27 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 6: 
return;
case 8: 
{
unsigned short v58;
signed int v59;
unsigned int v60;
unsigned int v61;
unsigned char v62;
v58 = v51 - 5;
v59 = -1 + -4;
v60 = 6U - v49;
v61 = v49 + 6U;
v62 = v27 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 10: 
{
unsigned short v63;
signed int v64;
unsigned int v65;
unsigned int v66;
unsigned char v67;
v63 = 3 + v48;
v64 = 0 - -2;
v65 = 5U + 0U;
v66 = 0U - 6U;
v67 = v27 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static signed short v17 (unsigned int v68, signed short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 2;
unsigned char v71 = 7;
unsigned short v70 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed int v73;
signed int v74;
v73 = 2 + -1;
v74 = v1 (v73);
history[history_index++] = (int)v74;
}
break;
case 3: 
{
signed short v75;
unsigned short v76;
unsigned int v77;
v75 = 1 + 0;
v76 = v70 - 6;
v77 = 2U + 4U;
v29 (v75, v76, v77);
}
break;
case 7: 
{
signed short v78;
unsigned short v79;
unsigned int v80;
v78 = v69 - -1;
v79 = v70 - v70;
v80 = v68 + 0U;
v29 (v78, v79, v80);
}
break;
case 13: 
return v69;
case 15: 
return v69;
default: abort ();
}
}
}
}

void v15 (unsigned int v81, unsigned int v82, unsigned short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 4U;
signed int v85 = 0;
signed short v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 3;
signed char v89 = -4;
signed char v88 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v91;
signed short v92;
signed short v93;
v91 = 1U - 7U;
v92 = -1 + -3;
v93 = v17 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 2: 
{
unsigned int v94;
signed short v95;
signed short v96;
v94 = 4U + 3U;
v95 = 2 - -2;
v96 = v17 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 14: 
return 1;
case 16: 
return v87;
default: abort ();
}
}
}
}
