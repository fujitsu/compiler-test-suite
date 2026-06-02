#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern signed char v3 (signed char, signed short, signed char, unsigned short);
extern signed char (*v4) (signed char, signed short, signed char, unsigned short);
extern unsigned int v5 (unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char);
extern void v7 (unsigned short, signed short, unsigned char);
extern void (*v8) (unsigned short, signed short, unsigned char);
unsigned char v9 (unsigned int, signed char);
unsigned char (*v10) (unsigned int, signed char) = v9;
extern unsigned int v11 (signed int, signed short, signed char, signed short);
extern unsigned int (*v12) (signed int, signed short, signed char, signed short);
extern unsigned char v13 (signed int, unsigned char, signed char);
extern unsigned char (*v14) (signed int, unsigned char, signed char);
static signed int v15 (void);
static signed int (*v16) (void) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern void v23 (signed short, unsigned int);
extern void (*v24) (signed short, unsigned int);
static signed char v25 (unsigned char);
static signed char (*v26) (unsigned char) = v25;
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = 3;
unsigned short v84 = 5;
signed short v83 = -1;

static signed char v25 (unsigned char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -4;
unsigned char v88 = 2;
signed char v87 = -4;
trace++;
switch (trace)
{
case 5: 
return 2;
case 9: 
{
signed int v90;
signed short v91;
v90 = -3 - 1;
v91 = -1 - -2;
v27 (v90, v91);
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned short v94 = 4;
unsigned short v93 = 2;
signed int v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (void)
{
{
for (;;) {
unsigned char v97 = 7;
unsigned char v96 = 5;
unsigned short v95 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v98;
signed char v99;
v98 = v96 - v96;
v99 = v25 (v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
return 0;
case 8: 
{
unsigned char v100;
signed char v101;
v100 = 0 + 3;
v101 = v25 (v100);
history[history_index++] = (int)v101;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v102, signed char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 2;
unsigned int v105 = 4U;
signed int v104 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v107;
v107 = v15 ();
history[history_index++] = (int)v107;
}
break;
case 7: 
{
signed int v108;
v108 = v15 ();
history[history_index++] = (int)v108;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}
