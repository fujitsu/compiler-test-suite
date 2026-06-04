#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned char);
unsigned int (*v2) (unsigned char, unsigned char) = v1;
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
unsigned short v5 (signed int, unsigned char, signed int);
unsigned short (*v6) (signed int, unsigned char, signed int) = v5;
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern unsigned short v9 (signed int, signed short, signed int);
extern unsigned short (*v10) (signed int, signed short, signed int);
extern signed char v11 (unsigned int, unsigned char);
extern signed char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (unsigned int, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short);
extern signed int v15 (signed int, signed int, unsigned char);
extern signed int (*v16) (signed int, signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned short, signed int, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, signed int, unsigned int);
static signed int v19 (signed short, unsigned short);
static signed int (*v20) (signed short, unsigned short) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
unsigned int v23 (signed short, signed int, unsigned char);
unsigned int (*v24) (signed short, signed int, unsigned char) = v23;
extern signed int v25 (unsigned short, unsigned int, signed int);
extern signed int (*v26) (unsigned short, unsigned int, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed char v29 (signed short, signed char, signed char, signed short);
signed char (*v30) (signed short, signed char, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = -4;
unsigned short v78 = 7;
unsigned short v77 = 7;

signed char v29 (signed short v80, signed char v81, signed char v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 1;
signed int v85 = 0;
unsigned char v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed short v87, signed int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 1;
unsigned char v91 = 2;
unsigned short v90 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (signed short v93, unsigned short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -2;
unsigned short v96 = 5;
signed short v95 = 2;
trace++;
switch (trace)
{
case 4: 
return 3;
case 8: 
return -2;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v98, unsigned char v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -2;
unsigned short v102 = 6;
signed short v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v104, unsigned char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -3;
unsigned char v107 = 7;
signed int v106 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v109;
signed short v110;
v109 = 3 - -2;
v110 = v3 (v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
return 2U;
case 3: 
{
signed short v111;
unsigned short v112;
signed int v113;
v111 = v108 + v108;
v112 = 5 - 6;
v113 = v19 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 5: 
{
signed char v114;
signed short v115;
v114 = -2 - -4;
v115 = v3 (v114);
history[history_index++] = (int)v115;
}
break;
case 7: 
{
signed short v116;
unsigned short v117;
signed int v118;
v116 = -1 + 2;
v117 = 2 - 0;
v118 = v19 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 9: 
return 4U;
default: abort ();
}
}
}
}
