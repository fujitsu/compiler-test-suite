#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern void v5 (signed int, unsigned char, unsigned char);
extern void (*v6) (signed int, unsigned char, unsigned char);
extern unsigned short v7 (unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, signed char);
signed int v9 (signed int, unsigned char);
signed int (*v10) (signed int, unsigned char) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v22) (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
void v25 (unsigned char);
void (*v26) (unsigned char) = v25;
void v27 (signed char, unsigned char, unsigned short);
void (*v28) (signed char, unsigned char, unsigned short) = v27;
static unsigned char v29 (signed short, unsigned int);
static unsigned char (*v30) (signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v83 = 3;
unsigned short v82 = 0;
unsigned short v81 = 5;

static unsigned char v29 (signed short v84, unsigned int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 1;
unsigned int v87 = 5U;
signed short v86 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed char v89;
unsigned short v90;
v89 = 2 - 3;
v90 = v1 (v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v27 (signed char v91, unsigned char v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 2;
signed int v95 = 2;
unsigned short v94 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 0U;
signed short v99 = -4;
unsigned short v98 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed short v101;
unsigned int v102;
unsigned char v103;
v101 = v99 - 2;
v102 = 6U + v100;
v103 = v29 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned int v106 = 0U;
unsigned int v105 = 3U;
signed char v104 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 0;
unsigned short v110 = 1;
unsigned char v109 = 4;
trace++;
switch (trace)
{
case 8: 
return 0;
default: abort ();
}
}
}
}
