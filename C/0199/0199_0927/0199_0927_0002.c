#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern unsigned char v5 (unsigned char, signed short, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, signed int, unsigned int);
void v7 (unsigned int, signed int, signed short);
void (*v8) (unsigned int, signed int, signed short) = v7;
unsigned short v9 (signed short, signed char);
unsigned short (*v10) (signed short, signed char) = v9;
unsigned int v11 (signed int, unsigned char);
unsigned int (*v12) (signed int, unsigned char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (unsigned short, signed int, signed int, unsigned int);
extern unsigned short (*v18) (unsigned short, signed int, signed int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short);
signed char v25 (unsigned short, signed int, signed char, signed short);
signed char (*v26) (unsigned short, signed int, signed char, signed short) = v25;
extern void v27 (signed char, signed short);
extern void (*v28) (signed char, signed short);
extern void v29 (signed int, signed short);
extern void (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 5;
unsigned int v90 = 2U;
signed short v89 = -3;

signed char v25 (unsigned short v92, signed int v93, signed char v94, signed short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -2;
signed int v97 = 1;
unsigned int v96 = 2U;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 1;
case 10: 
return v94;
default: abort ();
}
}
}
}

unsigned int v11 (signed int v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 5;
signed short v102 = 1;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v104, signed char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -1;
signed int v107 = 2;
signed char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned int v109, signed int v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
unsigned char v113 = 3;
signed char v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -4;
signed int v117 = 2;
signed int v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
