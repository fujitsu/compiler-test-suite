#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char, unsigned char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
signed short v15 (unsigned int, unsigned short, signed int);
signed short (*v16) (unsigned int, unsigned short, signed int) = v15;
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (signed short, unsigned int, signed int);
extern void (*v22) (signed short, unsigned int, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed int v25 (signed int, signed int, signed short, unsigned short);
signed int (*v26) (signed int, signed int, signed short, unsigned short) = v25;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 2;
unsigned short v104 = 5;
signed int v103 = 3;

signed char v29 (void)
{
{
for (;;) {
unsigned short v108 = 6;
unsigned short v107 = 2;
signed short v106 = 2;
trace++;
switch (trace)
{
case 6: 
return -1;
default: abort ();
}
}
}
}

signed int v25 (signed int v109, signed int v110, signed short v111, unsigned short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 2;
unsigned char v114 = 3;
signed int v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v116, unsigned short v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 0;
unsigned short v120 = 2;
signed char v119 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned short v124 = 2;
signed char v123 = 3;
signed char v122 = 0;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}
