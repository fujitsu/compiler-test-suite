#include <stdlib.h>
unsigned short v1 (unsigned int, signed int, signed int);
unsigned short (*v2) (unsigned int, signed int, signed int) = v1;
extern unsigned char v3 (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned char, signed char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern signed int v9 (signed char, unsigned short, signed char, unsigned short);
extern signed int (*v10) (signed char, unsigned short, signed char, unsigned short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
static unsigned char v15 (unsigned char);
static unsigned char (*v16) (unsigned char) = v15;
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
unsigned int v27 (signed short, unsigned int, signed int, signed char);
unsigned int (*v28) (signed short, unsigned int, signed int, signed char) = v27;
extern unsigned int v29 (unsigned char, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = 2;
unsigned char v76 = 6;
unsigned short v75 = 2;

unsigned int v27 (signed short v78, unsigned int v79, signed int v80, signed char v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
unsigned char v83 = 1;
signed char v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned char v87 = 3;
signed short v86 = 3;
signed int v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v15 (unsigned char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 3;
unsigned short v90 = 3;
unsigned int v89 = 7U;
trace++;
switch (trace)
{
case 3: 
return 4;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned char v94 = 2;
unsigned char v93 = 4;
unsigned int v92 = 4U;
trace++;
switch (trace)
{
case 6: 
return 0U;
case 8: 
{
unsigned short v95;
unsigned char v96;
unsigned char v97;
v95 = 3 + 2;
v96 = v93 + 1;
v97 = v7 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 10: 
{
unsigned short v98;
unsigned char v99;
unsigned char v100;
v98 = 3 + 1;
v99 = v93 - v93;
v100 = v7 (v98, v99);
history[history_index++] = (int)v100;
}
break;
case 12: 
return v92;
case 14: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v101, signed int v102, signed int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 3U;
unsigned char v105 = 2;
unsigned short v104 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v107;
unsigned short v108;
v107 = 2 + 1;
v108 = v21 (v107);
history[history_index++] = (int)v108;
}
break;
case 2: 
{
unsigned char v109;
unsigned char v110;
v109 = v105 - v105;
v110 = v15 (v109);
history[history_index++] = (int)v110;
}
break;
case 4: 
{
unsigned char v111;
signed char v112;
unsigned short v113;
unsigned int v114;
unsigned char v115;
v111 = 5 - v105;
v112 = -4 + -3;
v113 = 4 + v104;
v114 = v106 - 0U;
v115 = v3 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 16: 
return v104;
default: abort ();
}
}
}
}
