#include <stdlib.h>
signed short v1 (signed char, signed int);
signed short (*v2) (signed char, signed int) = v1;
extern unsigned char v3 (unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (signed short, unsigned char, signed short);
extern unsigned short (*v8) (signed short, unsigned char, signed short);
extern unsigned int v9 (signed short, unsigned int);
extern unsigned int (*v10) (signed short, unsigned int);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v13 (signed char, signed short, signed short);
extern unsigned int (*v14) (signed char, signed short, signed short);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (signed char, unsigned short, signed short, unsigned short);
extern signed char (*v22) (signed char, unsigned short, signed short, unsigned short);
signed short v23 (signed char, signed int, signed char);
signed short (*v24) (signed char, signed int, signed char) = v23;
signed short v25 (unsigned int, signed int);
signed short (*v26) (unsigned int, signed int) = v25;
extern signed char v27 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed short, unsigned char);
static signed int v29 (void);
static signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = -2;
signed short v98 = -4;
signed char v97 = 1;

static signed int v29 (void)
{
{
for (;;) {
signed int v102 = -4;
signed char v101 = -3;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
case 9: 
return -2;
case 11: 
return v102;
default: abort ();
}
}
}
}

signed short v25 (unsigned int v103, signed int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 6;
unsigned char v106 = 6;
unsigned short v105 = 7;
trace++;
switch (trace)
{
case 2: 
return -2;
case 8: 
{
signed int v108;
v108 = v29 ();
history[history_index++] = (int)v108;
}
break;
case 10: 
{
signed int v109;
v109 = v29 ();
history[history_index++] = (int)v109;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v23 (signed char v110, signed int v111, signed char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed char v114 = 3;
unsigned int v113 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed int v118 = 0;
unsigned short v117 = 7;
signed int v116 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v119;
unsigned char v120;
v119 = 3U - 3U;
v120 = v19 (v119);
history[history_index++] = (int)v120;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

signed short v1 (signed char v121, signed int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 2;
signed short v124 = 1;
unsigned char v123 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v126;
unsigned short v127;
signed short v128;
unsigned short v129;
signed char v130;
v126 = v121 + v121;
v127 = 5 + 5;
v128 = 1 + v124;
v129 = 5 + 3;
v130 = v21 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 4: 
{
unsigned int v131;
unsigned char v132;
v131 = 6U - 2U;
v132 = v11 (v131);
history[history_index++] = (int)v132;
}
break;
case 16: 
return 2;
default: abort ();
}
}
}
}
