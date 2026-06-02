#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern unsigned short v7 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v8) (unsigned int, signed short, signed char, signed char);
extern signed int v9 (unsigned short, signed int, unsigned int, signed char);
extern signed int (*v10) (unsigned short, signed int, unsigned int, signed char);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned short v13 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned short, unsigned int, unsigned int);
signed int v15 (void);
signed int (*v16) (void) = v15;
signed int v17 (unsigned int, unsigned int);
signed int (*v18) (unsigned int, unsigned int) = v17;
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
extern signed short v23 (unsigned short, signed int, signed short);
extern signed short (*v24) (unsigned short, signed int, signed short);
extern signed char v25 (unsigned char, signed char);
extern signed char (*v26) (unsigned char, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v92 = 1;
signed char v91 = -1;
unsigned int v90 = 1U;

signed int v19 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 3U;
unsigned char v95 = 7;
unsigned char v94 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed int v97;
signed char v98;
v97 = -4 + 0;
v98 = v29 (v97);
history[history_index++] = (int)v98;
}
break;
case 9: 
{
unsigned short v99;
signed int v100;
unsigned int v101;
signed char v102;
signed int v103;
v99 = 6 - 2;
v100 = -1 + -1;
v101 = v96 + 5U;
v102 = 1 - v93;
v103 = v9 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v104, unsigned int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
unsigned char v107 = 4;
unsigned short v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed short v111 = -4;
signed char v110 = 3;
unsigned int v109 = 5U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v112;
signed char v113;
signed char v114;
v112 = 0 - 7;
v113 = 2 + v110;
v114 = v25 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
return -1;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned short v117 = 3;
unsigned char v116 = 3;
unsigned int v115 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed short v120 = 2;
unsigned int v119 = 4U;
signed char v118 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
