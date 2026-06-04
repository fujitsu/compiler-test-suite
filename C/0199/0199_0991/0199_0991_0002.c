#include <stdlib.h>
extern void v3 (signed short);
extern void (*v4) (signed short);
signed char v5 (unsigned short, signed int, signed int);
signed char (*v6) (unsigned short, signed int, signed int) = v5;
extern unsigned int v7 (unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned short, unsigned char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
signed int v13 (signed char, unsigned char, unsigned int);
signed int (*v14) (signed char, unsigned char, unsigned int) = v13;
signed int v15 (unsigned short, signed short, unsigned short, signed int);
signed int (*v16) (unsigned short, signed short, unsigned short, signed int) = v15;
extern unsigned short v17 (signed char, unsigned int);
extern unsigned short (*v18) (signed char, unsigned int);
unsigned char v19 (unsigned short);
unsigned char (*v20) (unsigned short) = v19;
extern unsigned short v21 (signed int, signed int, signed short);
extern unsigned short (*v22) (signed int, signed int, signed short);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed int, unsigned char, signed short, signed int);
extern void (*v28) (signed int, unsigned char, signed short, signed int);
static signed int v29 (signed char, unsigned int);
static signed int (*v30) (signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 3;
unsigned int v66 = 7U;
unsigned short v65 = 4;

static signed int v29 (signed char v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -3;
signed int v71 = 3;
signed short v70 = -2;
trace++;
switch (trace)
{
case 2: 
return 1;
case 7: 
return 3;
case 9: 
return 3;
case 11: 
return 1;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned short v75 = 1;
unsigned int v74 = 4U;
signed short v73 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed char v76;
unsigned int v77;
signed int v78;
v76 = -3 + -2;
v77 = 3U - v74;
v78 = v29 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 8: 
{
signed char v79;
unsigned int v80;
signed int v81;
v79 = -2 - -3;
v80 = v74 - v74;
v81 = v29 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 10: 
{
signed char v82;
unsigned int v83;
signed int v84;
v82 = 3 - 3;
v83 = v74 + v74;
v84 = v29 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -4;
unsigned char v87 = 7;
unsigned int v86 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v89, signed short v90, unsigned short v91, signed int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 2;
unsigned char v94 = 1;
signed int v93 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed char v96;
unsigned int v97;
signed int v98;
v96 = -4 - 1;
v97 = 6U - 0U;
v98 = v29 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 3: 
return -1;
default: abort ();
}
}
}
}

signed int v13 (signed char v99, unsigned char v100, unsigned int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -3;
signed char v103 = -2;
unsigned int v102 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v105, signed int v106, signed int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = -2;
signed short v109 = 3;
signed char v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
