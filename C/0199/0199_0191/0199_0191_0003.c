#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern signed char v3 (signed int, unsigned short, signed int);
extern signed char (*v4) (signed int, unsigned short, signed int);
void v5 (unsigned int, signed short);
void (*v6) (unsigned int, signed short) = v5;
extern signed char v7 (unsigned char, unsigned int, unsigned char, signed int);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char, signed int);
void v9 (unsigned int, signed short, signed char);
void (*v10) (unsigned int, signed short, signed char) = v9;
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern signed short v13 (signed short, signed char, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, signed char, unsigned short);
extern signed int v15 (signed char, unsigned char);
extern signed int (*v16) (signed char, unsigned char);
extern void v17 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
signed short v21 (unsigned char, unsigned char);
signed short (*v22) (unsigned char, unsigned char) = v21;
signed short v23 (unsigned short, signed char, unsigned int, signed short);
signed short (*v24) (unsigned short, signed char, unsigned int, signed short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed short, signed char, unsigned char, unsigned short);
extern signed short (*v28) (signed short, signed char, unsigned char, unsigned short);
static signed short v29 (signed short);
static signed short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 2U;
unsigned int v92 = 0U;
unsigned char v91 = 3;

static signed short v29 (signed short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 2;
signed short v96 = 0;
signed short v95 = 2;
trace++;
switch (trace)
{
case 10: 
return v95;
default: abort ();
}
}
}
}

signed short v23 (unsigned short v98, signed char v99, unsigned int v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -3;
unsigned short v103 = 6;
signed int v102 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed short v105;
signed short v106;
v105 = -4 + v101;
v106 = v29 (v105);
history[history_index++] = (int)v106;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed short v21 (unsigned char v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 1;
unsigned int v110 = 7U;
unsigned short v109 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v112;
signed short v113;
signed char v114;
v112 = 4 - v111;
v113 = -2 + -4;
v114 = v11 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}

void v9 (unsigned int v115, signed short v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 4U;
signed int v119 = 3;
signed int v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v121, signed short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 6U;
signed char v124 = 1;
unsigned char v123 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
