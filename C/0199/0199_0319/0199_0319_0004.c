#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
signed short v5 (unsigned short, signed short);
signed short (*v6) (unsigned short, signed short) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (unsigned short, signed short, signed int);
extern signed int (*v10) (unsigned short, signed short, signed int);
extern unsigned short v11 (unsigned int, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned int, unsigned char, unsigned char);
extern unsigned short v13 (unsigned char, unsigned char, signed int);
extern unsigned short (*v14) (unsigned char, unsigned char, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
static unsigned short v17 (signed char, signed short);
static unsigned short (*v18) (signed char, signed short) = v17;
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
unsigned int v21 (signed short, unsigned char);
unsigned int (*v22) (signed short, unsigned char) = v21;
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern void v27 (unsigned int, signed int);
extern void (*v28) (unsigned int, signed int);
unsigned short v29 (signed int, unsigned int);
unsigned short (*v30) (signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 0U;
unsigned char v92 = 1;
unsigned char v91 = 5;

unsigned short v29 (signed int v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 1U;
signed char v97 = -2;
unsigned short v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed short v101 = -3;
unsigned int v100 = 3U;
unsigned char v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v102, unsigned char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -4;
unsigned short v105 = 2;
signed int v104 = 0;
trace++;
switch (trace)
{
case 6: 
return 2U;
default: abort ();
}
}
}
}

static unsigned short v17 (signed char v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 2;
unsigned char v110 = 1;
signed char v109 = 2;
trace++;
switch (trace)
{
case 3: 
return 3;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed short v5 (unsigned short v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 3;
unsigned char v115 = 2;
unsigned int v114 = 2U;
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
signed char v119 = 2;
unsigned short v118 = 6;
signed short v117 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v120;
signed int v121;
v120 = 6U - 7U;
v121 = 2 - 0;
v27 (v120, v121);
}
break;
case 2: 
{
signed char v122;
signed short v123;
unsigned short v124;
v122 = v119 - v119;
v123 = v117 - v117;
v124 = v17 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 4: 
{
unsigned int v125;
unsigned int v126;
unsigned char v127;
unsigned char v128;
unsigned short v129;
v125 = 4U + 4U;
v126 = 1U + 3U;
v127 = 5 + 6;
v128 = 4 + 3;
v129 = v11 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 10: 
{
signed char v130;
signed short v131;
unsigned short v132;
v130 = -2 - v119;
v131 = v117 - v117;
v132 = v17 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
