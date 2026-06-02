#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern void v3 (signed short);
extern void (*v4) (signed short);
void v5 (signed char);
void (*v6) (signed char) = v5;
unsigned char v7 (unsigned char, signed char, unsigned short);
unsigned char (*v8) (unsigned char, signed char, unsigned short) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
void v11 (unsigned int, signed int, signed int);
void (*v12) (unsigned int, signed int, signed int) = v11;
extern unsigned char v13 (signed int, signed int, unsigned char);
extern unsigned char (*v14) (signed int, signed int, unsigned char);
signed char v15 (unsigned int, unsigned int);
signed char (*v16) (unsigned int, unsigned int) = v15;
extern unsigned char v17 (signed short, unsigned int, signed char, unsigned char);
extern unsigned char (*v18) (signed short, unsigned int, signed char, unsigned char);
static signed char v19 (unsigned char, unsigned short, unsigned char, signed char);
static signed char (*v20) (unsigned char, unsigned short, unsigned char, signed char) = v19;
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (unsigned char, signed int);
extern signed short (*v28) (unsigned char, signed int);
extern signed int v29 (signed char, unsigned int, signed int);
extern signed int (*v30) (signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v91 = -2;
signed short v90 = -3;
unsigned short v89 = 0;

static signed char v19 (unsigned char v92, unsigned short v93, unsigned char v94, signed char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 7;
unsigned int v97 = 0U;
unsigned char v96 = 4;
trace++;
switch (trace)
{
case 5: 
return -4;
case 11: 
return v95;
default: abort ();
}
}
}
}

signed char v15 (unsigned int v99, unsigned int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -4;
signed short v102 = -1;
unsigned char v101 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v104;
unsigned short v105;
unsigned char v106;
signed char v107;
signed char v108;
v104 = v101 + 7;
v105 = 1 - 1;
v106 = 3 - 0;
v107 = -2 + -4;
v108 = v19 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 6: 
return v103;
case 10: 
{
unsigned char v109;
unsigned short v110;
unsigned char v111;
signed char v112;
signed char v113;
v109 = v101 + 7;
v110 = 6 + 2;
v111 = 4 - 6;
v112 = v103 - v103;
v113 = v19 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 12: 
return v103;
default: abort ();
}
}
}
}

void v11 (unsigned int v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 2;
unsigned short v118 = 1;
unsigned char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v120, signed char v121, unsigned short v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 3;
signed short v124 = -4;
unsigned char v123 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v126;
unsigned int v127;
v126 = v122 - v122;
v127 = v23 (v126);
history[history_index++] = (int)v127;
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}

void v5 (signed char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
signed int v130 = 2;
signed short v129 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
