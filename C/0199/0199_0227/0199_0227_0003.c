#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned short);
extern unsigned char (*v2) (unsigned char, signed int, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
void v5 (signed short, signed short);
void (*v6) (signed short, signed short) = v5;
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed char v19 (signed short, unsigned char, signed int);
signed char (*v20) (signed short, unsigned char, signed int) = v19;
void v23 (signed short, unsigned char, unsigned int);
void (*v24) (signed short, unsigned char, unsigned int) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
signed int v27 (signed short, signed char, signed char, signed int);
signed int (*v28) (signed short, signed char, signed char, signed int) = v27;
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 4U;
signed char v90 = 0;
signed int v89 = 2;

signed int v27 (signed short v92, signed char v93, signed char v94, signed int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 2U;
unsigned short v97 = 6;
signed short v96 = -2;
trace++;
switch (trace)
{
case 1: 
return v95;
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
signed short v101 = -1;
unsigned char v100 = 4;
unsigned short v99 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v102, unsigned char v103, unsigned int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 4U;
signed char v106 = -4;
unsigned int v105 = 0U;
trace++;
switch (trace)
{
case 5: 
{
signed int v108;
unsigned char v109;
signed char v110;
v108 = 0 + 0;
v109 = v103 + v103;
v110 = 0 + -1;
v7 (v108, v109, v110);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed char v19 (signed short v111, unsigned char v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 5U;
unsigned char v115 = 2;
signed int v114 = 2;
trace++;
switch (trace)
{
case 7: 
return 0;
case 11: 
return -3;
default: abort ();
}
}
}
}

void v5 (signed short v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 5;
unsigned short v120 = 7;
signed int v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
