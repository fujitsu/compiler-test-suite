#include <stdlib.h>
unsigned char v1 (unsigned char, signed int, unsigned char, unsigned short);
unsigned char (*v2) (unsigned char, signed int, unsigned char, unsigned short) = v1;
extern signed char v3 (unsigned int, signed int);
extern signed char (*v4) (unsigned int, signed int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed char v13 (signed int, signed char, unsigned int, unsigned char);
extern signed char (*v14) (signed int, signed char, unsigned int, unsigned char);
static unsigned int v15 (unsigned char);
static unsigned int (*v16) (unsigned char) = v15;
extern unsigned int v17 (unsigned char, signed short, signed char);
extern unsigned int (*v18) (unsigned char, signed short, signed char);
signed int v19 (signed short, signed short, unsigned short);
signed int (*v20) (signed short, signed short, unsigned short) = v19;
unsigned int v21 (signed short, unsigned short, unsigned char, unsigned short);
unsigned int (*v22) (signed short, unsigned short, unsigned char, unsigned short) = v21;
signed char v23 (void);
signed char (*v24) (void) = v23;
extern signed int v25 (signed int, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, unsigned int);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
void v29 (unsigned int);
void (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 0U;
unsigned char v94 = 4;
signed char v93 = 1;

void v29 (unsigned int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -4;
signed int v98 = -2;
unsigned char v97 = 5;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned char v102 = 2;
unsigned short v101 = 2;
unsigned short v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v103, unsigned short v104, unsigned char v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -3;
unsigned short v108 = 1;
unsigned short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v110, signed short v111, unsigned short v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed short v114 = 1;
signed short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v15 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -2;
unsigned char v118 = 5;
unsigned int v117 = 3U;
trace++;
switch (trace)
{
case 7: 
return v117;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v120, signed int v121, unsigned char v122, unsigned short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 2;
signed short v125 = -4;
signed char v124 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v127;
v127 = v11 ();
history[history_index++] = (int)v127;
}
break;
case 6: 
{
unsigned char v128;
unsigned int v129;
v128 = v122 + v122;
v129 = v15 (v128);
history[history_index++] = (int)v129;
}
break;
case 8: 
{
signed char v130;
v130 = v11 ();
history[history_index++] = (int)v130;
}
break;
case 12: 
return v122;
default: abort ();
}
}
}
}
