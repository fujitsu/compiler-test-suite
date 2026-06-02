#include <stdlib.h>
void v1 (signed char, signed char, unsigned char);
void (*v2) (signed char, signed char, unsigned char) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed short v11 (signed int);
signed short (*v12) (signed int) = v11;
extern unsigned int v13 (signed short, signed char, signed short, unsigned char);
extern unsigned int (*v14) (signed short, signed char, signed short, unsigned char);
void v15 (signed short, unsigned char, unsigned char);
void (*v16) (signed short, unsigned char, unsigned char) = v15;
signed short v17 (signed char, unsigned int, unsigned int);
signed short (*v18) (signed char, unsigned int, unsigned int) = v17;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned int, signed int, unsigned short);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
static void v27 (signed short, unsigned int, signed short, unsigned short);
static void (*v28) (signed short, unsigned int, signed short, unsigned short) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = 3;
signed int v91 = -2;
unsigned char v90 = 4;

signed char v29 (void)
{
{
for (;;) {
unsigned char v95 = 2;
unsigned int v94 = 6U;
unsigned char v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v27 (signed short v96, unsigned int v97, signed short v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 1U;
unsigned char v101 = 2;
signed char v100 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed char v103;
unsigned int v104;
v103 = v100 - -4;
v104 = v25 (v103);
history[history_index++] = (int)v104;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}

signed short v17 (signed char v105, unsigned int v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 5;
unsigned int v109 = 7U;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v111, unsigned char v112, unsigned char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 5U;
signed char v115 = 1;
unsigned char v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 3;
signed int v119 = -4;
unsigned int v118 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v121, signed char v122, unsigned char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -1;
unsigned char v125 = 1;
unsigned short v124 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v127;
unsigned int v128;
v127 = v122 + v121;
v128 = v5 (v127);
history[history_index++] = (int)v128;
}
break;
case 4: 
{
signed short v129;
unsigned int v130;
signed short v131;
unsigned short v132;
v129 = 1 + -1;
v130 = 0U - 7U;
v131 = v126 + 2;
v132 = 2 - 2;
v27 (v129, v130, v131, v132);
}
break;
case 8: 
return;
case 9: 
return;
default: abort ();
}
}
}
}
