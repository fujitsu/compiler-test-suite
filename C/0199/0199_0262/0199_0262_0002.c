#include <stdlib.h>
signed char v1 (unsigned int);
signed char (*v2) (unsigned int) = v1;
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
static signed char v5 (unsigned char, signed short, unsigned int);
static signed char (*v6) (unsigned char, signed short, unsigned int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (signed int, unsigned short, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed short, signed int, unsigned short);
extern unsigned char (*v18) (signed short, signed int, unsigned short);
extern unsigned int v19 (signed short, unsigned char);
extern unsigned int (*v20) (signed short, unsigned char);
extern signed short v21 (signed short, unsigned char);
extern signed short (*v22) (signed short, unsigned char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short v25 (signed int, signed short, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned char);
signed int v27 (unsigned char, unsigned int, unsigned char, signed char);
signed int (*v28) (unsigned char, unsigned int, unsigned char, signed char) = v27;
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = -2;
signed char v72 = 1;
unsigned char v71 = 5;

signed int v27 (unsigned char v74, unsigned int v75, unsigned char v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -4;
signed int v79 = 3;
signed short v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v5 (unsigned char v81, signed short v82, unsigned int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 1;
signed int v85 = 2;
unsigned short v84 = 6;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

void v3 (unsigned char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -3;
unsigned int v89 = 3U;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 3;
unsigned int v93 = 1U;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed short v95;
signed int v96;
unsigned short v97;
unsigned char v98;
v95 = -3 + 2;
v96 = -3 - 3;
v97 = 2 + 4;
v98 = v17 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 4: 
{
signed short v99;
unsigned char v100;
signed short v101;
v99 = -1 - -4;
v100 = 2 - 5;
v101 = v21 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
unsigned char v102;
signed short v103;
unsigned int v104;
signed char v105;
v102 = 5 + 0;
v103 = -1 + -2;
v104 = 6U + v92;
v105 = v5 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
