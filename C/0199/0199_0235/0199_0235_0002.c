#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed char, unsigned int);
extern signed int (*v2) (signed int, signed short, signed char, unsigned int);
signed int v3 (unsigned short, signed short, signed char);
signed int (*v4) (unsigned short, signed short, signed char) = v3;
extern signed short v5 (unsigned int, unsigned short);
extern signed short (*v6) (unsigned int, unsigned short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
unsigned short v9 (unsigned short);
unsigned short (*v10) (unsigned short) = v9;
extern unsigned char v11 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v12) (unsigned char, unsigned short, signed int, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned int v23 (signed char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, signed short, unsigned char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
void v29 (unsigned char, signed int, signed short, unsigned int);
void (*v30) (unsigned char, signed int, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = 1;
signed int v100 = 3;
unsigned short v99 = 5;

void v29 (unsigned char v102, signed int v103, signed short v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 2;
unsigned int v107 = 2U;
unsigned int v106 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v111 = 7;
unsigned int v110 = 6U;
signed int v109 = -4;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed int v114 = 0;
unsigned short v113 = 4;
trace++;
switch (trace)
{
case 5: 
return v112;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v116, signed short v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -2;
signed short v120 = 3;
unsigned int v119 = 4U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v122;
v122 = 7 - 3;
v7 (v122);
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}
