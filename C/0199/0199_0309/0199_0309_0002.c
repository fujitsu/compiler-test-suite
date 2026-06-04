#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned char);
extern signed short (*v2) (unsigned short, unsigned char);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed int v7 (signed int, unsigned char);
extern signed int (*v8) (signed int, unsigned char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned short, signed short);
extern signed int v13 (signed int, signed char);
extern signed int (*v14) (signed int, signed char);
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
unsigned short v17 (signed char, unsigned int, unsigned short, signed int);
unsigned short (*v18) (signed char, unsigned int, unsigned short, signed int) = v17;
signed short v19 (unsigned char, signed char, signed char);
signed short (*v20) (unsigned char, signed char, signed char) = v19;
extern void v21 (signed int);
extern void (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (signed short, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (signed short, unsigned char, unsigned short, unsigned short);
void v27 (signed char, signed int, unsigned char);
void (*v28) (signed char, signed int, unsigned char) = v27;
static signed char v29 (unsigned int, unsigned short, unsigned int, unsigned char);
static signed char (*v30) (unsigned int, unsigned short, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = 0;
signed char v69 = 1;
signed int v68 = -1;

static signed char v29 (unsigned int v71, unsigned short v72, unsigned int v73, unsigned char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 2U;
unsigned int v76 = 6U;
unsigned short v75 = 2;
trace++;
switch (trace)
{
case 5: 
return 0;
case 7: 
return -3;
case 9: 
return 2;
case 11: 
return 2;
default: abort ();
}
}
}
}

void v27 (signed char v78, signed int v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -4;
unsigned char v82 = 4;
unsigned char v81 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v84, signed char v85, signed char v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 3;
signed char v88 = -4;
unsigned char v87 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v90;
unsigned short v91;
unsigned int v92;
unsigned char v93;
signed char v94;
v90 = 3U + 7U;
v91 = 6 + v89;
v92 = 2U + 5U;
v93 = 6 + v87;
v94 = v29 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
{
unsigned int v95;
unsigned short v96;
unsigned int v97;
unsigned char v98;
signed char v99;
v95 = 4U - 7U;
v96 = v89 + v89;
v97 = 0U - 3U;
v98 = v87 - 1;
v99 = v29 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 8: 
{
unsigned int v100;
unsigned short v101;
unsigned int v102;
unsigned char v103;
signed char v104;
v100 = 2U - 0U;
v101 = 6 + v89;
v102 = 0U - 6U;
v103 = v87 + v87;
v104 = v29 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 10: 
{
unsigned int v105;
unsigned short v106;
unsigned int v107;
unsigned char v108;
signed char v109;
v105 = 3U + 2U;
v106 = v89 - 3;
v107 = 6U - 2U;
v108 = 4 - 1;
v109 = v29 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v110, unsigned int v111, unsigned short v112, signed int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -1;
unsigned short v115 = 7;
signed char v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v119 = 6U;
unsigned int v118 = 0U;
unsigned short v117 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
