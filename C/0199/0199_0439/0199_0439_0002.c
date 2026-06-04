#include <stdlib.h>
void v1 (signed short, unsigned char, signed int, unsigned int);
void (*v2) (signed short, unsigned char, signed int, unsigned int) = v1;
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed short v7 (signed short, unsigned int);
extern signed short (*v8) (signed short, unsigned int);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
static signed short v11 (signed short, unsigned int, signed int, unsigned char);
static signed short (*v12) (signed short, unsigned int, signed int, unsigned char) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (signed int, unsigned short, unsigned char);
extern unsigned char (*v18) (signed int, unsigned short, unsigned char);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern void v21 (unsigned int, signed int, unsigned int, unsigned char);
extern void (*v22) (unsigned int, signed int, unsigned int, unsigned char);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern unsigned short v25 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
static unsigned int v29 (signed char);
static unsigned int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v65 = 5;
signed char v64 = 1;
unsigned char v63 = 5;

static unsigned int v29 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 5;
unsigned int v68 = 2U;
unsigned short v67 = 7;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v70;
signed int v71;
unsigned int v72;
unsigned char v73;
v70 = v68 + v68;
v71 = 1 + -4;
v72 = v68 - 1U;
v73 = 6 - v69;
v21 (v70, v71, v72, v73);
}
break;
case 9: 
return v68;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v76 = -1;
signed short v75 = 3;
unsigned short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (signed short v77, unsigned int v78, signed int v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 4U;
signed short v82 = 1;
signed int v81 = -4;
trace++;
switch (trace)
{
case 5: 
return v77;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v86 = 2U;
signed char v85 = -1;
signed char v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v87, unsigned char v88, signed int v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 3;
unsigned short v92 = 4;
unsigned int v91 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v94;
unsigned short v95;
unsigned char v96;
unsigned char v97;
v94 = 0 - 0;
v95 = 1 - 0;
v96 = 4 + 7;
v97 = v17 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 4: 
{
signed short v98;
unsigned int v99;
signed int v100;
unsigned char v101;
signed short v102;
v98 = v87 + v93;
v99 = v90 + 0U;
v100 = 0 + v89;
v101 = 7 - v88;
v102 = v11 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 6: 
{
signed char v103;
unsigned int v104;
v103 = -1 - -2;
v104 = v29 (v103);
history[history_index++] = (int)v104;
}
break;
case 10: 
{
signed char v105;
unsigned int v106;
v105 = 1 - -4;
v106 = v3 (v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
