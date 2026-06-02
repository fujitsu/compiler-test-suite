#include <stdlib.h>
signed int v1 (signed int);
signed int (*v2) (signed int) = v1;
extern unsigned char v3 (unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned short, unsigned char, signed short);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, signed int, signed int, signed int);
extern void (*v12) (signed char, signed int, signed int, signed int);
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
unsigned int v15 (unsigned char, signed short, unsigned char);
unsigned int (*v16) (unsigned char, signed short, unsigned char) = v15;
extern unsigned int v17 (signed char, unsigned short);
extern unsigned int (*v18) (signed char, unsigned short);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
unsigned short v21 (signed char, signed char);
unsigned short (*v22) (signed char, signed char) = v21;
static void v23 (unsigned char, signed char, signed int);
static void (*v24) (unsigned char, signed char, signed int) = v23;
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
signed int v27 (unsigned char, unsigned char, unsigned short, unsigned char);
signed int (*v28) (unsigned char, unsigned char, unsigned short, unsigned char) = v27;
static signed int v29 (unsigned short, unsigned int, signed short, unsigned char);
static signed int (*v30) (unsigned short, unsigned int, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v57 = 1;
unsigned int v56 = 1U;
unsigned int v55 = 7U;

static signed int v29 (unsigned short v58, unsigned int v59, signed short v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 3;
unsigned char v63 = 4;
signed char v62 = 2;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return -3;
case 8: 
return -2;
default: abort ();
}
}
}
}

signed int v27 (unsigned char v65, unsigned char v66, unsigned short v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 6;
unsigned char v70 = 5;
signed short v69 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v23 (unsigned char v72, signed char v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 3;
unsigned int v76 = 5U;
signed short v75 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v78;
unsigned int v79;
signed short v80;
unsigned char v81;
signed int v82;
v78 = 5 + 1;
v79 = v76 - 5U;
v80 = -4 - -3;
v81 = v77 + v77;
v82 = v29 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 5: 
{
unsigned short v83;
unsigned int v84;
signed short v85;
unsigned char v86;
signed int v87;
v83 = 4 - 1;
v84 = 7U + 2U;
v85 = v75 + v75;
v86 = v77 + 4;
v87 = v29 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 7: 
{
unsigned short v88;
unsigned int v89;
signed short v90;
unsigned char v91;
signed int v92;
v88 = 3 - 4;
v89 = v76 - 0U;
v90 = 3 + -1;
v91 = v77 + v77;
v92 = v29 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 9: 
{
unsigned short v93;
unsigned char v94;
signed short v95;
unsigned char v96;
v93 = 0 + 0;
v94 = v77 + v77;
v95 = -1 - v75;
v96 = v3 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (signed char v97, signed char v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 0;
signed char v100 = 1;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v102, signed short v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 1U;
unsigned int v106 = 4U;
unsigned int v105 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -4;
signed short v110 = -2;
unsigned char v109 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v112;
signed char v113;
unsigned int v114;
signed short v115;
v112 = 1U + 2U;
v113 = -1 + -3;
v114 = 6U - 3U;
v115 = v19 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 2: 
{
unsigned char v116;
signed char v117;
signed int v118;
v116 = v109 + 7;
v117 = -2 - -3;
v118 = v108 - 0;
v23 (v116, v117, v118);
}
break;
case 12: 
return v108;
default: abort ();
}
}
}
}
