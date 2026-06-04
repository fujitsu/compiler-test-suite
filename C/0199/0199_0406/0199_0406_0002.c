#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned short v3 (signed char, unsigned char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (unsigned char, signed char, unsigned int);
signed short (*v8) (unsigned char, signed char, unsigned int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed char v17 (unsigned int, unsigned short);
extern signed char (*v18) (unsigned int, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (signed short, signed int, unsigned short);
extern unsigned int (*v22) (signed short, signed int, unsigned short);
static unsigned char v23 (signed int, signed char, signed short, signed char);
static unsigned char (*v24) (signed int, signed char, signed short, signed char) = v23;
extern unsigned int v25 (signed short, signed short);
extern unsigned int (*v26) (signed short, signed short);
static unsigned char v27 (signed char);
static unsigned char (*v28) (signed char) = v27;
extern signed char v29 (unsigned int, unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 5;
signed int v63 = 0;
unsigned int v62 = 2U;

static unsigned char v27 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -2;
unsigned short v67 = 6;
unsigned char v66 = 0;
trace++;
switch (trace)
{
case 8: 
return v66;
case 10: 
return 7;
default: abort ();
}
}
}
}

static unsigned char v23 (signed int v69, signed char v70, signed short v71, signed char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = 0;
unsigned short v74 = 2;
signed int v73 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed char v76;
unsigned char v77;
v76 = v70 + v72;
v77 = v27 (v76);
history[history_index++] = (int)v77;
}
break;
case 9: 
{
signed char v78;
unsigned char v79;
v78 = -1 - v70;
v79 = v27 (v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed int v82 = -2;
unsigned short v81 = 6;
signed short v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 3;
signed short v87 = 3;
unsigned int v86 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned int v91 = 4U;
signed int v90 = 3;
unsigned char v89 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v92;
unsigned char v93;
v92 = 6U - v91;
v93 = v13 (v92);
history[history_index++] = (int)v93;
}
break;
case 2: 
{
signed short v94;
signed int v95;
unsigned short v96;
unsigned int v97;
v94 = 3 - -4;
v95 = v90 - 2;
v96 = 6 - 1;
v97 = v21 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 4: 
{
signed short v98;
signed int v99;
v98 = -4 - 0;
v99 = v15 (v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
signed int v100;
signed char v101;
signed short v102;
signed char v103;
unsigned char v104;
v100 = v90 + 3;
v101 = -3 - -4;
v102 = 1 + -3;
v103 = 2 + 3;
v104 = v23 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
