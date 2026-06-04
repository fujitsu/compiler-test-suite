#include <stdlib.h>
signed int v1 (unsigned short, signed int);
signed int (*v2) (unsigned short, signed int) = v1;
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned int, unsigned int, unsigned char, unsigned short);
extern void (*v8) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
unsigned char v11 (unsigned short, unsigned short, signed char, unsigned int);
unsigned char (*v12) (unsigned short, unsigned short, signed char, unsigned int) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, signed char, signed char, unsigned char);
extern signed int (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
void v19 (signed short, unsigned short);
void (*v20) (signed short, unsigned short) = v19;
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
signed char v23 (unsigned int);
signed char (*v24) (unsigned int) = v23;
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned char);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned char);
unsigned char v29 (signed int);
unsigned char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 6U;
unsigned int v86 = 1U;
unsigned int v85 = 4U;

unsigned char v29 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 0;
unsigned char v90 = 0;
unsigned short v89 = 1;
trace++;
switch (trace)
{
case 3: 
return 3;
case 7: 
return 3;
case 9: 
return v90;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed char v23 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
signed int v94 = -4;
signed short v93 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 1;
unsigned char v99 = 3;
unsigned char v98 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v101, unsigned short v102, signed char v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 0;
signed short v106 = -2;
unsigned char v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -1;
unsigned int v110 = 5U;
signed char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v112, signed int v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -3;
signed int v115 = -1;
signed int v114 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v117;
signed short v118;
unsigned short v119;
v117 = 5 - v112;
v118 = 0 - -3;
v119 = v9 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 16: 
return -4;
default: abort ();
}
}
}
}
