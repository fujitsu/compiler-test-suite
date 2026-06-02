#include <stdlib.h>
signed char v1 (unsigned int, signed short);
signed char (*v2) (unsigned int, signed short) = v1;
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
signed int v19 (signed short, unsigned char);
signed int (*v20) (signed short, unsigned char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
unsigned int v25 (unsigned short, unsigned char, signed char, signed int);
unsigned int (*v26) (unsigned short, unsigned char, signed char, signed int) = v25;
extern unsigned int v27 (signed int, signed char, signed int);
extern unsigned int (*v28) (signed int, signed char, signed int);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = 1;
unsigned short v100 = 2;
unsigned char v99 = 1;

unsigned int v25 (unsigned short v102, unsigned char v103, signed char v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 6;
unsigned int v107 = 7U;
unsigned short v106 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned short v111 = 7;
signed int v110 = -1;
unsigned int v109 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v112, unsigned char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
unsigned int v115 = 2U;
signed char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed char v119 = 2;
unsigned short v118 = 2;
unsigned short v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 0;
signed int v123 = -2;
signed int v122 = 2;
trace++;
switch (trace)
{
case 0: 
return -3;
case 1: 
{
signed char v125;
v125 = v9 ();
history[history_index++] = (int)v125;
}
break;
case 3: 
{
signed char v126;
v126 = v9 ();
history[history_index++] = (int)v126;
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}
