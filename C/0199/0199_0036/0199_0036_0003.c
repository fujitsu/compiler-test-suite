#include <stdlib.h>
unsigned char v1 (unsigned char);
unsigned char (*v2) (unsigned char) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed char v5 (signed int);
extern signed char (*v6) (signed int);
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
signed char v9 (unsigned short, signed char);
signed char (*v10) (unsigned short, signed char) = v9;
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
extern unsigned short v13 (signed short, unsigned int, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned short, signed short);
extern unsigned short v15 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned char);
signed int v17 (unsigned char, unsigned int, unsigned int, signed char);
signed int (*v18) (unsigned char, unsigned int, unsigned int, signed char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, unsigned short, unsigned char, signed int);
extern signed char (*v22) (signed short, unsigned short, unsigned char, signed int);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
unsigned int v25 (signed char, signed short, unsigned int);
unsigned int (*v26) (signed char, signed short, unsigned int) = v25;
static signed int v27 (unsigned int);
static signed int (*v28) (unsigned int) = v27;
extern unsigned int v29 (unsigned int, unsigned int);
extern unsigned int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = 1;
unsigned short v80 = 6;
signed short v79 = -3;

static signed int v27 (unsigned int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 4;
signed int v84 = -1;
unsigned short v83 = 4;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

unsigned int v25 (signed char v86, signed short v87, unsigned int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -2;
signed int v90 = 3;
unsigned short v89 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v92, unsigned int v93, unsigned int v94, signed char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 1;
signed char v97 = -1;
unsigned short v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v99, signed char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 5U;
signed char v102 = -3;
signed short v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 2;
signed int v106 = -1;
unsigned char v105 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v108;
signed short v109;
unsigned char v110;
v108 = 7U + 0U;
v109 = -3 + 3;
v110 = v7 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
{
unsigned int v111;
signed int v112;
v111 = 0U - 3U;
v112 = v27 (v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
unsigned char v113;
v113 = v19 ();
history[history_index++] = (int)v113;
}
break;
case 6: 
{
signed char v114;
signed char v115;
v114 = 2 - 0;
v115 = v3 (v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
unsigned char v116;
v116 = v19 ();
history[history_index++] = (int)v116;
}
break;
case 12: 
return v104;
default: abort ();
}
}
}
}
