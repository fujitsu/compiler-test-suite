#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned short, signed char, unsigned short);
unsigned char (*v2) (unsigned int, unsigned short, signed char, unsigned short) = v1;
unsigned int v3 (signed int, unsigned short);
unsigned int (*v4) (signed int, unsigned short) = v3;
extern signed int v5 (signed int, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned short, unsigned char);
unsigned int v7 (unsigned short, signed char);
unsigned int (*v8) (unsigned short, signed char) = v7;
signed short v9 (unsigned short, signed char, signed short, unsigned short);
signed short (*v10) (unsigned short, signed char, signed short, unsigned short) = v9;
extern signed short v11 (signed short, unsigned char);
extern signed short (*v12) (signed short, unsigned char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
void v19 (unsigned short, signed char, signed char, signed char);
void (*v20) (unsigned short, signed char, signed char, signed char) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed char, unsigned short, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = -2;
signed char v89 = -2;
signed short v88 = -1;

signed int v27 (void)
{
{
for (;;) {
signed char v93 = 3;
signed short v92 = -1;
signed char v91 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v94;
unsigned char v95;
unsigned char v96;
v94 = -2 + 2;
v95 = 1 + 7;
v96 = v17 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 4: 
{
signed int v97;
unsigned char v98;
unsigned char v99;
v97 = -3 - -3;
v98 = 2 - 7;
v99 = v17 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
signed int v100;
unsigned char v101;
unsigned char v102;
v100 = -3 + 0;
v101 = 1 - 0;
v102 = v17 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 8: 
{
signed int v103;
unsigned char v104;
unsigned char v105;
v103 = 3 + -1;
v104 = 5 + 7;
v105 = v17 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

void v19 (unsigned short v106, signed char v107, signed char v108, signed char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 3;
signed int v111 = -4;
signed int v110 = -1;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed int v115 = 3;
signed char v114 = 0;
unsigned int v113 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed int v118 = 0;
unsigned short v117 = 6;
signed int v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v119, signed char v120, signed short v121, unsigned short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
unsigned char v124 = 7;
signed int v123 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v126, signed char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 2;
unsigned char v129 = 5;
unsigned int v128 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 1;
signed int v134 = 3;
unsigned char v133 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v136, unsigned short v137, signed char v138, unsigned short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 5U;
signed short v141 = 3;
signed int v140 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v143;
unsigned short v144;
unsigned short v145;
unsigned char v146;
signed int v147;
v143 = -2 - v140;
v144 = v139 - v139;
v145 = 0 - 0;
v146 = 0 + 1;
v147 = v5 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
