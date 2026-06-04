#include <stdlib.h>
unsigned int v1 (unsigned short, signed int, unsigned char);
unsigned int (*v2) (unsigned short, signed int, unsigned char) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern signed char v9 (unsigned int, signed char, signed short, unsigned int);
extern signed char (*v10) (unsigned int, signed char, signed short, unsigned int);
signed int v11 (unsigned char, signed int, unsigned short, signed char);
signed int (*v12) (unsigned char, signed int, unsigned short, signed char) = v11;
extern signed int v13 (unsigned int, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
signed char v17 (unsigned char, signed char);
signed char (*v18) (unsigned char, signed char) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (signed short, unsigned char);
extern signed int (*v22) (signed short, unsigned char);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
signed short v25 (signed short, unsigned int, unsigned char, unsigned char);
signed short (*v26) (signed short, unsigned int, unsigned char, unsigned char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v86 = 5;
signed int v85 = 1;
unsigned short v84 = 2;

signed short v25 (signed short v87, unsigned int v88, unsigned char v89, unsigned char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 2;
unsigned int v92 = 4U;
signed int v91 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 3;
signed short v96 = -1;
signed int v95 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v98, signed char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = -4;
unsigned int v101 = 5U;
unsigned char v100 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v103, signed int v104, unsigned short v105, signed char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 4U;
signed char v108 = -3;
unsigned short v107 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v110, signed int v111, unsigned char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -3;
unsigned char v114 = 3;
signed char v113 = 2;
trace++;
switch (trace)
{
case 0: 
return 3U;
case 1: 
{
unsigned short v116;
v116 = v27 ();
history[history_index++] = (int)v116;
}
break;
case 5: 
{
v15 ();
}
break;
case 7: 
{
signed int v117;
v117 = v19 ();
history[history_index++] = (int)v117;
}
break;
case 13: 
return 1U;
default: abort ();
}
}
}
}
