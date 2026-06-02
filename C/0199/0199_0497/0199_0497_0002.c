#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned short, signed char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short, signed char, unsigned short);
signed char v11 (signed char, unsigned char);
signed char (*v12) (signed char, unsigned char) = v11;
extern signed int v13 (unsigned short, signed char, unsigned char, unsigned char);
extern signed int (*v14) (unsigned short, signed char, unsigned char, unsigned char);
unsigned short v15 (signed short, unsigned char, unsigned int);
unsigned short (*v16) (signed short, unsigned char, unsigned int) = v15;
unsigned int v17 (signed short);
unsigned int (*v18) (signed short) = v17;
static signed char v19 (signed short, signed int, unsigned char, signed int);
static signed char (*v20) (signed short, signed int, unsigned char, signed int) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (signed int, signed short, unsigned short, unsigned int);
void (*v26) (signed int, signed short, unsigned short, unsigned int) = v25;
void v29 (signed int, unsigned char, unsigned char);
void (*v30) (signed int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 0;
unsigned int v86 = 7U;
signed int v85 = 0;

void v29 (signed int v88, unsigned char v89, unsigned char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 3;
unsigned int v92 = 3U;
signed int v91 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed int v94, signed short v95, unsigned short v96, unsigned int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 5U;
signed short v99 = -1;
signed int v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v19 (signed short v101, signed int v102, unsigned char v103, signed int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 1;
unsigned char v106 = 0;
signed int v105 = 2;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -2;
unsigned int v110 = 0U;
signed int v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v112, unsigned char v113, unsigned int v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 1;
unsigned char v116 = 0;
unsigned int v115 = 1U;
trace++;
switch (trace)
{
case 10: 
{
signed short v118;
signed int v119;
unsigned char v120;
signed int v121;
signed char v122;
v118 = v112 + -4;
v119 = 1 + -3;
v120 = 1 + v113;
v121 = 3 - -3;
v122 = v19 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}

signed char v11 (signed char v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 6;
signed char v126 = 1;
unsigned short v125 = 4;
trace++;
switch (trace)
{
case 8: 
return v123;
default: abort ();
}
}
}
}
