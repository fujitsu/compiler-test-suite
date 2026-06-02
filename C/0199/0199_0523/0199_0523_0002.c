#include <stdlib.h>
extern signed short v1 (unsigned int, signed char, unsigned short, signed short);
extern signed short (*v2) (unsigned int, signed char, unsigned short, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
static unsigned short v5 (void);
static unsigned short (*v6) (void) = v5;
signed char v7 (signed short, unsigned char, signed char);
signed char (*v8) (signed short, unsigned char, signed char) = v7;
extern unsigned int v9 (signed int, unsigned short, signed int, signed short);
extern unsigned int (*v10) (signed int, unsigned short, signed int, signed short);
void v11 (signed int, unsigned char, unsigned char, signed int);
void (*v12) (signed int, unsigned char, unsigned char, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned char, signed int, unsigned int);
extern unsigned char (*v16) (unsigned char, signed int, unsigned int);
extern unsigned int v17 (unsigned int, unsigned int, signed char, signed char);
extern unsigned int (*v18) (unsigned int, unsigned int, signed char, signed char);
extern signed char v19 (unsigned short, unsigned short);
extern signed char (*v20) (unsigned short, unsigned short);
extern signed char v21 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v22) (unsigned int, signed char, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
void v25 (signed int, signed int, signed char);
void (*v26) (signed int, signed int, signed char) = v25;
signed int v27 (signed int, signed short, signed char);
signed int (*v28) (signed int, signed short, signed char) = v27;
static void v29 (signed char, signed char, signed char);
static void (*v30) (signed char, signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 7;
unsigned char v67 = 0;
unsigned int v66 = 6U;

static void v29 (signed char v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 3U;
unsigned short v73 = 3;
unsigned int v72 = 2U;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v27 (signed int v75, signed short v76, signed char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 2;
unsigned int v79 = 3U;
unsigned char v78 = 1;
trace++;
switch (trace)
{
case 1: 
return v75;
default: abort ();
}
}
}
}

void v25 (signed int v81, signed int v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 7U;
signed char v85 = -1;
unsigned char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v87, unsigned char v88, unsigned char v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 0;
signed char v92 = 2;
unsigned char v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v94, unsigned char v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 5U;
signed int v98 = -2;
unsigned int v97 = 5U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v100;
v100 = v5 ();
history[history_index++] = (int)v100;
}
break;
case 5: 
{
unsigned short v101;
v101 = v5 ();
history[history_index++] = (int)v101;
}
break;
case 7: 
{
signed char v102;
signed char v103;
signed char v104;
v102 = -3 + -3;
v103 = v96 - -1;
v104 = v96 - v96;
v29 (v102, v103, v104);
}
break;
case 9: 
{
signed char v105;
signed char v106;
signed char v107;
v105 = v96 + v96;
v106 = -3 + -4;
v107 = 2 - 0;
v29 (v105, v106, v107);
}
break;
case 11: 
return v96;
case 13: 
return 0;
default: abort ();
}
}
}
}

static unsigned short v5 (void)
{
{
for (;;) {
signed int v110 = 1;
signed int v109 = 2;
unsigned short v108 = 5;
trace++;
switch (trace)
{
case 4: 
return v108;
case 6: 
{
signed short v111;
unsigned char v112;
signed char v113;
signed char v114;
v111 = -1 + -2;
v112 = 3 + 3;
v113 = -1 - -2;
v114 = v7 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
