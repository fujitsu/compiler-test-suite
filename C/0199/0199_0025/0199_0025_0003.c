#include <stdlib.h>
extern void v3 (signed char, signed int, signed short);
extern void (*v4) (signed char, signed int, signed short);
signed char v5 (unsigned short, signed char, unsigned char, signed char);
signed char (*v6) (unsigned short, signed char, unsigned char, signed char) = v5;
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
void v9 (signed int, signed short, unsigned char);
void (*v10) (signed int, signed short, unsigned char) = v9;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern signed short v15 (unsigned short, unsigned char, unsigned int);
extern signed short (*v16) (unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed short);
extern unsigned char (*v18) (signed char, unsigned short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
signed char v21 (unsigned short, signed char);
signed char (*v22) (unsigned short, signed char) = v21;
signed char v23 (unsigned char, signed int, signed int);
signed char (*v24) (unsigned char, signed int, signed int) = v23;
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern signed short v27 (unsigned short, unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 7U;
unsigned int v88 = 1U;
signed short v87 = -1;

signed char v23 (unsigned char v90, signed int v91, signed int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 7;
unsigned int v94 = 0U;
signed int v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v96, signed char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 0;
unsigned int v99 = 4U;
unsigned int v98 = 7U;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v101;
unsigned int v102;
signed int v103;
unsigned int v104;
signed short v105;
v101 = v96 + v96;
v102 = v98 + v99;
v103 = 2 + -4;
v104 = 0U + v99;
v105 = v27 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned short v106;
unsigned int v107;
signed int v108;
unsigned int v109;
signed short v110;
v106 = v96 + 4;
v107 = v98 - v98;
v108 = 1 - -4;
v109 = v98 - 3U;
v110 = v27 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 8: 
{
unsigned short v111;
unsigned int v112;
signed int v113;
unsigned int v114;
signed short v115;
v111 = v96 + 5;
v112 = 6U - 1U;
v113 = -1 - 1;
v114 = v99 + v99;
v115 = v27 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned char v118 = 3;
signed short v117 = 0;
unsigned int v116 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v119, signed short v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -1;
signed char v123 = -4;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v125, signed char v126, unsigned char v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 7U;
unsigned short v130 = 5;
unsigned int v129 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
