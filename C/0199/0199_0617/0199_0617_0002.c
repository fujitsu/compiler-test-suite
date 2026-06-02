#include <stdlib.h>
unsigned char v3 (signed int, signed char, signed char);
unsigned char (*v4) (signed int, signed char, signed char) = v3;
extern signed char v7 (unsigned char, signed short, signed char, signed char);
extern signed char (*v8) (unsigned char, signed short, signed char, signed char);
extern signed int v9 (signed short, signed int, signed short, signed int);
extern signed int (*v10) (signed short, signed int, signed short, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
signed char v23 (unsigned char, signed char);
signed char (*v24) (unsigned char, signed char) = v23;
signed short v25 (unsigned char);
signed short (*v26) (unsigned char) = v25;
extern unsigned short v27 (signed int, signed short, signed short, unsigned int);
extern unsigned short (*v28) (signed int, signed short, signed short, unsigned int);
static signed char v29 (signed short, unsigned char);
static signed char (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 0;
unsigned int v89 = 4U;
unsigned int v88 = 6U;

static signed char v29 (signed short v91, unsigned char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 6U;
unsigned short v94 = 2;
signed short v93 = 3;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
return -3;
case 7: 
return 2;
default: abort ();
}
}
}
}

signed short v25 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 4;
unsigned char v98 = 1;
unsigned char v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned char v100, signed char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 4;
unsigned int v103 = 2U;
signed short v102 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
unsigned char v107 = 0;
unsigned int v106 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned int v111 = 6U;
signed short v110 = 3;
unsigned int v109 = 2U;
trace++;
switch (trace)
{
case 2: 
{
signed short v112;
unsigned char v113;
signed char v114;
v112 = v110 - -4;
v113 = 3 + 3;
v114 = v29 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 4: 
{
signed short v115;
unsigned char v116;
signed char v117;
v115 = v110 + v110;
v116 = 0 + 6;
v117 = v29 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 6: 
{
signed short v118;
unsigned char v119;
signed char v120;
v118 = v110 + 3;
v119 = 3 + 0;
v120 = v29 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v121, signed char v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 0;
unsigned short v125 = 0;
unsigned short v124 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
