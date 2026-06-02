#include <stdlib.h>
signed short v1 (unsigned short);
signed short (*v2) (unsigned short) = v1;
unsigned char v3 (unsigned short, signed short, unsigned int, unsigned short);
unsigned char (*v4) (unsigned short, signed short, unsigned int, unsigned short) = v3;
static unsigned char v5 (unsigned short, signed short, unsigned int, unsigned short);
static unsigned char (*v6) (unsigned short, signed short, unsigned int, unsigned short) = v5;
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned int, unsigned short, signed short);
extern unsigned short v13 (unsigned short, unsigned int);
extern unsigned short (*v14) (unsigned short, unsigned int);
extern signed char v15 (unsigned int, unsigned char, signed short);
extern signed char (*v16) (unsigned int, unsigned char, signed short);
extern unsigned short v17 (signed char, unsigned int, signed short);
extern unsigned short (*v18) (signed char, unsigned int, signed short);
extern signed int v19 (unsigned int, signed short);
extern signed int (*v20) (unsigned int, signed short);
static unsigned char v21 (void);
static unsigned char (*v22) (void) = v21;
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern signed int v25 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v26) (unsigned int, signed int, unsigned char, signed int);
static signed char v27 (unsigned short, unsigned short);
static signed char (*v28) (unsigned short, unsigned short) = v27;
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 5U;
signed short v74 = -4;
unsigned char v73 = 1;

static signed char v27 (unsigned short v76, unsigned short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 1U;
unsigned int v79 = 0U;
signed char v78 = 1;
trace++;
switch (trace)
{
case 9: 
return v78;
default: abort ();
}
}
}
}

static unsigned char v21 (void)
{
{
for (;;) {
signed char v83 = 3;
signed short v82 = 3;
signed short v81 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v84;
unsigned short v85;
signed char v86;
v84 = 5 + 1;
v85 = 6 + 2;
v86 = v27 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 10: 
return 5;
default: abort ();
}
}
}
}

static unsigned char v5 (unsigned short v87, signed short v88, unsigned int v89, unsigned short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -1;
unsigned short v92 = 7;
signed char v91 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v94;
signed int v95;
v94 = 0U + v89;
v95 = 2 - -3;
v29 (v94, v95);
}
break;
case 5: 
{
unsigned int v96;
signed int v97;
v96 = v89 + 7U;
v97 = 2 - -1;
v29 (v96, v97);
}
break;
case 7: 
{
unsigned char v98;
v98 = v21 ();
history[history_index++] = (int)v98;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v99, signed short v100, unsigned int v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 6;
unsigned short v104 = 5;
unsigned char v103 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -4;
unsigned int v108 = 5U;
unsigned int v107 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v110;
signed short v111;
v110 = 1U - v107;
v111 = v9 (v110);
history[history_index++] = (int)v111;
}
break;
case 2: 
{
unsigned short v112;
signed short v113;
unsigned int v114;
unsigned short v115;
unsigned char v116;
v112 = 1 + v106;
v113 = -3 - -2;
v114 = v108 - v108;
v115 = v106 + 7;
v116 = v5 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
