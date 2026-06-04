#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
unsigned short v5 (signed char, signed int);
unsigned short (*v6) (signed char, signed int) = v5;
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (signed short, unsigned int, signed char);
extern signed short (*v12) (signed short, unsigned int, signed char);
unsigned short v13 (unsigned char, unsigned short);
unsigned short (*v14) (unsigned char, unsigned short) = v13;
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned short v17 (unsigned int, signed char, unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed char, unsigned int, signed short);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
static signed short v21 (unsigned short);
static signed short (*v22) (unsigned short) = v21;
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern signed int v25 (unsigned short, unsigned char, unsigned short, signed char);
extern signed int (*v26) (unsigned short, unsigned char, unsigned short, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
void v29 (unsigned char, unsigned short, unsigned int);
void (*v30) (unsigned char, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = -3;
unsigned char v84 = 0;
signed int v83 = -1;

void v29 (unsigned char v86, unsigned short v87, unsigned int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 5;
signed short v90 = -1;
signed short v89 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -4;
signed char v94 = 1;
unsigned short v93 = 3;
trace++;
switch (trace)
{
case 7: 
return -1;
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 7;
unsigned int v99 = 6U;
unsigned char v98 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v101;
signed char v102;
v101 = 4U - 4U;
v102 = v19 (v101);
history[history_index++] = (int)v102;
}
break;
case 4: 
{
unsigned int v103;
signed char v104;
v103 = 4U + v99;
v104 = v19 (v103);
history[history_index++] = (int)v104;
}
break;
case 6: 
{
unsigned short v105;
signed short v106;
v105 = v97 + v97;
v106 = v21 (v105);
history[history_index++] = (int)v106;
}
break;
case 8: 
{
unsigned short v107;
signed short v108;
v107 = v97 - v97;
v108 = v21 (v107);
history[history_index++] = (int)v108;
}
break;
case 10: 
return v97;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 3U;
signed int v112 = -3;
unsigned char v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -3;
signed char v116 = -2;
unsigned char v115 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
