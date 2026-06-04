#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
signed int v7 (unsigned char);
signed int (*v8) (unsigned char) = v7;
extern signed short v9 (unsigned char, unsigned short, unsigned char);
extern signed short (*v10) (unsigned char, unsigned short, unsigned char);
void v11 (unsigned int);
void (*v12) (unsigned int) = v11;
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed short);
unsigned int v15 (signed short, signed int);
unsigned int (*v16) (signed short, signed int) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed int v19 (signed int, signed int, signed char, signed int);
signed int (*v20) (signed int, signed int, signed char, signed int) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (signed short);
extern void (*v26) (signed short);
extern unsigned short v27 (unsigned int, signed int);
extern unsigned short (*v28) (unsigned int, signed int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 6U;
unsigned int v82 = 0U;
signed short v81 = -2;

signed int v23 (void)
{
{
for (;;) {
signed int v86 = -1;
signed char v85 = -2;
signed short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed int v87, signed int v88, signed char v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 3U;
unsigned int v92 = 1U;
signed char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v94, signed int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 7U;
unsigned short v97 = 3;
signed short v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = -4;
unsigned char v101 = 5;
signed int v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
unsigned char v105 = 3;
signed short v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed short v109 = -3;
signed char v108 = -2;
signed short v107 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v110;
v110 = v21 ();
history[history_index++] = (int)v110;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
