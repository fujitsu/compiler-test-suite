#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern unsigned short v3 (signed int, unsigned short, signed short, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short, signed short, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
signed int v7 (unsigned short);
signed int (*v8) (unsigned short) = v7;
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern unsigned short v11 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short, signed char);
extern signed char v13 (signed char, unsigned short, unsigned char, signed char);
extern signed char (*v14) (signed char, unsigned short, unsigned char, signed char);
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
static signed int v19 (signed int);
static signed int (*v20) (signed int) = v19;
signed char v23 (signed short, unsigned short, signed char);
signed char (*v24) (signed short, unsigned short, signed char) = v23;
extern unsigned char v25 (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short);
unsigned int v29 (signed char, unsigned char, signed char);
unsigned int (*v30) (signed char, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 6U;
unsigned char v93 = 4;
unsigned char v92 = 6;

unsigned int v29 (signed char v95, unsigned char v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 1;
unsigned char v99 = 1;
signed int v98 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed short v101, unsigned short v102, signed char v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 4;
unsigned int v105 = 4U;
unsigned char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (signed int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 0;
unsigned char v109 = 0;
signed char v108 = 1;
trace++;
switch (trace)
{
case 3: 
return v107;
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (signed char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = -4;
unsigned char v113 = 3;
signed int v112 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 7;
signed char v117 = -1;
signed short v116 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed int v119;
signed int v120;
v119 = -2 + -4;
v120 = v19 (v119);
history[history_index++] = (int)v120;
}
break;
case 4: 
{
signed int v121;
signed int v122;
v121 = -1 + -3;
v122 = v19 (v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
return 0;
case 8: 
return 2;
default: abort ();
}
}
}
}
