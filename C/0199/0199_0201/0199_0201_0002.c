#include <stdlib.h>
unsigned char v1 (signed short, unsigned char, unsigned int, unsigned char);
unsigned char (*v2) (signed short, unsigned char, unsigned int, unsigned char) = v1;
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
signed short v5 (signed short, signed int);
signed short (*v6) (signed short, signed int) = v5;
void v7 (signed char, signed int, signed int);
void (*v8) (signed char, signed int, signed int) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
void v13 (unsigned char, unsigned char);
void (*v14) (unsigned char, unsigned char) = v13;
signed char v15 (unsigned char, signed short, unsigned int, signed int);
signed char (*v16) (unsigned char, signed short, unsigned int, signed int) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
static signed int v19 (void);
static signed int (*v20) (void) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (unsigned short, signed char, signed int);
extern signed char (*v24) (unsigned short, signed char, signed int);
extern unsigned int v25 (unsigned char, signed char, signed char, signed char);
extern unsigned int (*v26) (unsigned char, signed char, signed char, signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = -2;
signed int v68 = 2;
signed char v67 = 0;

static signed int v19 (void)
{
{
for (;;) {
unsigned int v72 = 6U;
unsigned int v71 = 2U;
signed short v70 = 1;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v73, signed short v74, unsigned int v75, signed int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -2;
signed int v78 = 0;
signed char v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 2U;
unsigned char v83 = 4;
signed char v82 = -2;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v85;
signed char v86;
signed int v87;
signed char v88;
v85 = 6 - 7;
v86 = 1 + -3;
v87 = 0 + -4;
v88 = v23 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed int v91 = 0;
unsigned char v90 = 3;
signed int v89 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v92, signed int v93, signed int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 3;
unsigned char v96 = 5;
unsigned char v95 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v98, signed int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 1U;
unsigned char v101 = 3;
signed int v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v103, unsigned char v104, unsigned int v105, unsigned char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 0;
unsigned short v108 = 7;
signed int v107 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v110;
v110 = v11 ();
history[history_index++] = (int)v110;
}
break;
case 2: 
{
signed char v111;
signed int v112;
signed int v113;
v111 = 0 + 3;
v112 = v107 - 3;
v113 = v3 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 4: 
{
signed int v114;
v114 = v19 ();
history[history_index++] = (int)v114;
}
break;
case 6: 
{
signed char v115;
signed int v116;
signed int v117;
v115 = 0 + v109;
v116 = -4 - 0;
v117 = v3 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
