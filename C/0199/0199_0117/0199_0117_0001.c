#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
signed short v3 (void);
signed short (*v4) (void) = v3;
unsigned int v5 (unsigned int, signed int);
unsigned int (*v6) (unsigned int, signed int) = v5;
extern signed char v7 (signed char);
extern signed char (*v8) (signed char);
static signed int v9 (signed short, unsigned short, unsigned short, unsigned char);
static signed int (*v10) (signed short, unsigned short, unsigned short, unsigned char) = v9;
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
static signed int v13 (signed char);
static signed int (*v14) (signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, unsigned int, signed short);
extern signed char v21 (signed char, signed short, signed int);
extern signed char (*v22) (signed char, signed short, signed int);
static signed short v23 (unsigned char, unsigned short, unsigned short, signed char);
static signed short (*v24) (unsigned char, unsigned short, unsigned short, signed char) = v23;
extern void v25 (unsigned short, unsigned int, signed char);
extern void (*v26) (unsigned short, unsigned int, signed char);
static signed char v27 (void);
static signed char (*v28) (void) = v27;
extern void v29 (signed char, unsigned char, signed short);
extern void (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 1;
signed int v45 = 1;
unsigned short v44 = 0;

static signed char v27 (void)
{
{
for (;;) {
signed short v49 = -2;
unsigned char v48 = 6;
signed short v47 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v50;
signed int v51;
v50 = -2 + 0;
v51 = v13 (v50);
history[history_index++] = (int)v51;
}
break;
case 16: 
return -3;
default: abort ();
}
}
}
}

static signed short v23 (unsigned char v52, unsigned short v53, unsigned short v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 3;
unsigned char v57 = 2;
unsigned short v56 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v59;
unsigned short v60;
unsigned short v61;
signed char v62;
signed short v63;
v59 = v57 - v52;
v60 = v53 - v53;
v61 = v53 + v54;
v62 = v55 + -2;
v63 = v23 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 5: 
{
unsigned char v64;
unsigned short v65;
unsigned short v66;
signed char v67;
signed short v68;
v64 = 7 + 2;
v65 = v53 + v54;
v66 = 2 - 4;
v67 = -3 + v58;
v68 = v23 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 6: 
{
unsigned char v69;
unsigned short v70;
unsigned short v71;
signed char v72;
signed short v73;
v69 = 7 + v52;
v70 = v56 - v56;
v71 = v56 + v54;
v72 = v55 + v58;
v73 = v23 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 7: 
return 3;
case 8: 
{
signed short v74;
unsigned short v75;
unsigned short v76;
unsigned char v77;
signed int v78;
v74 = 3 - -4;
v75 = v56 + v53;
v76 = v53 + v53;
v77 = 5 - 0;
v78 = v9 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 10: 
{
signed short v79;
unsigned short v80;
unsigned short v81;
unsigned char v82;
signed int v83;
v79 = 2 + -4;
v80 = v54 + v53;
v81 = v53 - 4;
v82 = v57 - 1;
v83 = v9 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return -1;
case 13: 
return 3;
case 14: 
return 0;
default: abort ();
}
}
}
}

static signed int v13 (signed char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 3;
unsigned short v86 = 4;
unsigned char v85 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v88;
unsigned short v89;
unsigned short v90;
signed char v91;
signed short v92;
v88 = v85 - 1;
v89 = 7 + 1;
v90 = 6 - v86;
v91 = 3 + v84;
v92 = v23 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}

static signed int v9 (signed short v93, unsigned short v94, unsigned short v95, unsigned char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 5;
signed short v98 = 0;
unsigned int v97 = 3U;
trace++;
switch (trace)
{
case 9: 
return -2;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -3;
signed int v103 = 1;
signed short v102 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v105;
v105 = v27 ();
history[history_index++] = (int)v105;
}
break;
case 17: 
return 4U;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed short v108 = 2;
signed int v107 = 2;
signed char v106 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
