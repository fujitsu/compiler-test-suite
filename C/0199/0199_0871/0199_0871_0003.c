#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned short v5 (signed int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned char);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned int v13 (signed int, unsigned short);
unsigned int (*v14) (signed int, unsigned short) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (signed char, signed char, signed short);
signed int (*v22) (signed char, signed char, signed short) = v21;
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
signed short v25 (signed int, unsigned int, signed short, signed int);
signed short (*v26) (signed int, unsigned int, signed short, signed int) = v25;
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 5;
signed char v85 = -1;
signed int v84 = 0;

signed short v25 (signed int v87, unsigned int v88, signed short v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 2;
signed int v92 = -1;
unsigned short v91 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v94, signed char v95, signed short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 6;
unsigned short v98 = 4;
unsigned char v97 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v100, unsigned short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -2;
signed short v103 = 1;
signed short v102 = -3;
trace++;
switch (trace)
{
case 5: 
return 3U;
case 9: 
return 4U;
case 11: 
return 4U;
default: abort ();
}
}
}
}

void v7 (unsigned short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
unsigned short v107 = 2;
unsigned int v106 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed int v111 = 3;
signed char v110 = 0;
signed short v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
