#include <stdlib.h>
void v1 (unsigned short, signed int, unsigned int, signed short);
void (*v2) (unsigned short, signed int, unsigned int, signed short) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
void v17 (signed char);
void (*v18) (signed char) = v17;
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
unsigned int v29 (unsigned int, unsigned char);
unsigned int (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v93 = 1;
signed short v92 = -2;
unsigned int v91 = 6U;

unsigned int v29 (unsigned int v94, unsigned char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 7U;
unsigned char v97 = 3;
unsigned char v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 5;
signed short v101 = 0;
unsigned short v100 = 7;
trace++;
switch (trace)
{
case 2: 
{
signed short v103;
v103 = v25 ();
history[history_index++] = (int)v103;
}
break;
case 4: 
{
signed short v104;
v104 = v25 ();
history[history_index++] = (int)v104;
}
break;
case 6: 
{
signed short v105;
v105 = v25 ();
history[history_index++] = (int)v105;
}
break;
case 8: 
return v100;
default: abort ();
}
}
}
}

void v17 (signed char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 4U;
unsigned int v108 = 3U;
unsigned int v107 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v112 = -1;
unsigned int v111 = 5U;
signed int v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v113, signed int v114, unsigned int v115, signed short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 4;
signed int v118 = -3;
signed char v117 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v120;
unsigned char v121;
v120 = v114 - -4;
v121 = v7 (v120);
history[history_index++] = (int)v121;
}
break;
case 10: 
{
unsigned short v122;
signed char v123;
unsigned int v124;
v122 = 1 - 5;
v123 = -1 - v117;
v124 = v5 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
