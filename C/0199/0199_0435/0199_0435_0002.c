#include <stdlib.h>
unsigned short v1 (unsigned short, signed char, unsigned char);
unsigned short (*v2) (unsigned short, signed char, unsigned char) = v1;
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern unsigned int v5 (signed char, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
static unsigned short v13 (signed char, signed short);
static unsigned short (*v14) (signed char, signed short) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
static unsigned int v17 (unsigned short, unsigned int, signed char, unsigned int);
static unsigned int (*v18) (unsigned short, unsigned int, signed char, unsigned int) = v17;
unsigned int v19 (unsigned short, unsigned char, signed int);
unsigned int (*v20) (unsigned short, unsigned char, signed int) = v19;
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
extern unsigned char v27 (signed int, signed int, unsigned int, signed char);
extern unsigned char (*v28) (signed int, signed int, unsigned int, signed char);
extern unsigned int v29 (unsigned int, signed int, unsigned int);
extern unsigned int (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 4;
signed short v68 = 1;
unsigned char v67 = 2;

unsigned int v19 (unsigned short v70, unsigned char v71, signed int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 0U;
unsigned char v74 = 2;
unsigned char v73 = 6;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v76;
signed int v77;
unsigned int v78;
unsigned int v79;
v76 = 7U + 4U;
v77 = v72 + v72;
v78 = v75 - 3U;
v79 = v29 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
{
unsigned int v80;
signed int v81;
unsigned int v82;
unsigned int v83;
v80 = v75 - v75;
v81 = 0 + v72;
v82 = 4U - v75;
v83 = v29 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 10: 
return v75;
default: abort ();
}
}
}
}

static unsigned int v17 (unsigned short v84, unsigned int v85, signed char v86, unsigned int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 5U;
signed short v89 = -1;
signed int v88 = 3;
trace++;
switch (trace)
{
case 2: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v93 = 2U;
unsigned char v92 = 5;
signed char v91 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v13 (signed char v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 1;
unsigned char v97 = 6;
signed char v96 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v99;
unsigned int v100;
signed char v101;
unsigned int v102;
unsigned int v103;
v99 = 3 + v98;
v100 = 3U + 4U;
v101 = v96 + v96;
v102 = 7U - 7U;
v103 = v17 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 3: 
return 3;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v104, signed char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -3;
signed short v108 = 0;
signed short v107 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v110;
signed short v111;
unsigned short v112;
v110 = v105 - v105;
v111 = v108 + v108;
v112 = v13 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
signed short v113;
unsigned int v114;
v113 = -4 + -3;
v114 = v9 (v113);
history[history_index++] = (int)v114;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
