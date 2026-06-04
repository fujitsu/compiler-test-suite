#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed char);
extern unsigned char (*v6) (signed char);
signed char v7 (void);
signed char (*v8) (void) = v7;
unsigned int v9 (signed char, signed short, unsigned char, unsigned char);
unsigned int (*v10) (signed char, signed short, unsigned char, unsigned char) = v9;
signed char v11 (unsigned char, signed char, unsigned short);
signed char (*v12) (unsigned char, signed char, unsigned short) = v11;
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
unsigned char v15 (signed short);
unsigned char (*v16) (signed short) = v15;
extern unsigned int v17 (unsigned int, signed short);
extern unsigned int (*v18) (unsigned int, signed short);
static unsigned short v19 (unsigned char, unsigned char, signed char, signed int);
static unsigned short (*v20) (unsigned char, unsigned char, signed char, signed int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern signed char v23 (signed short, unsigned int, signed int);
extern signed char (*v24) (signed short, unsigned int, signed int);
extern unsigned char v25 (signed int, signed short);
extern unsigned char (*v26) (signed int, signed short);
static unsigned int v27 (void);
static unsigned int (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, unsigned int, signed int, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 3;
unsigned char v81 = 4;
signed int v80 = -2;

static unsigned int v27 (void)
{
{
for (;;) {
unsigned char v85 = 5;
signed int v84 = 3;
unsigned int v83 = 1U;
trace++;
switch (trace)
{
case 9: 
return 2U;
case 11: 
return v83;
default: abort ();
}
}
}
}

static unsigned short v19 (unsigned char v86, unsigned char v87, signed char v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -3;
unsigned short v91 = 7;
signed int v90 = -1;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v93;
v93 = v27 ();
history[history_index++] = (int)v93;
}
break;
case 10: 
{
unsigned int v94;
v94 = v27 ();
history[history_index++] = (int)v94;
}
break;
case 12: 
return v91;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 6;
signed char v97 = 0;
unsigned int v96 = 3U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v99;
signed char v100;
unsigned short v101;
signed char v102;
v99 = 7 + 5;
v100 = 3 - v97;
v101 = 1 + 5;
v102 = v11 (v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 7: 
{
unsigned char v103;
unsigned char v104;
signed char v105;
signed int v106;
unsigned short v107;
v103 = 3 + 4;
v104 = 0 - 3;
v105 = -1 + v97;
v106 = -1 + -2;
v107 = v19 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed char v11 (unsigned char v108, signed char v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 0;
signed char v112 = 1;
unsigned char v111 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v114;
unsigned char v115;
v114 = v112 - v112;
v115 = v5 (v114);
history[history_index++] = (int)v115;
}
break;
case 6: 
return v112;
case 15: 
return v109;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v116, signed short v117, unsigned char v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 0;
unsigned char v121 = 6;
signed char v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed int v125 = -4;
signed short v124 = 2;
unsigned int v123 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
