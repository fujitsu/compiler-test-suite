#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
void v3 (signed int);
void (*v4) (signed int) = v3;
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
extern unsigned short v7 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short, unsigned char);
unsigned short v9 (signed short);
unsigned short (*v10) (signed short) = v9;
unsigned short v11 (unsigned char, unsigned int);
unsigned short (*v12) (unsigned char, unsigned int) = v11;
unsigned char v13 (unsigned short);
unsigned char (*v14) (unsigned short) = v13;
extern unsigned short v15 (unsigned char, signed int, signed char, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed char, signed int);
extern void v17 (void);
extern void (*v18) (void);
void v19 (unsigned short, unsigned int);
void (*v20) (unsigned short, unsigned int) = v19;
extern unsigned char v21 (signed short, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed short, unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 4U;
unsigned int v100 = 7U;
signed short v99 = -1;

void v19 (unsigned short v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 2U;
signed char v105 = -1;
unsigned char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 5;
unsigned int v109 = 3U;
unsigned int v108 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v111, unsigned int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -4;
signed short v114 = -3;
signed short v113 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v116;
unsigned int v117;
v116 = 7U + v112;
v117 = v27 (v116);
history[history_index++] = (int)v117;
}
break;
case 15: 
return 7;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 2;
signed char v120 = 0;
signed short v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -1;
signed char v124 = 1;
signed char v123 = 1;
trace++;
switch (trace)
{
case 1: 
return;
case 6: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
