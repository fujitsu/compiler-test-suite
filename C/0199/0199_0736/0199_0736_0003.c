#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned short, unsigned int);
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern unsigned char v5 (signed char, signed int, signed int, signed char);
extern unsigned char (*v6) (signed char, signed int, signed int, signed char);
extern unsigned short v7 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v8) (signed int, unsigned char, signed char, signed int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
unsigned char v13 (signed char, unsigned short);
unsigned char (*v14) (signed char, unsigned short) = v13;
signed char v15 (unsigned int, unsigned int);
signed char (*v16) (unsigned int, unsigned int) = v15;
extern void v17 (unsigned short, signed char, unsigned int);
extern void (*v18) (unsigned short, signed char, unsigned int);
extern unsigned char v19 (signed short, signed short);
extern unsigned char (*v20) (signed short, signed short);
extern signed short v21 (unsigned char, unsigned char, signed char);
extern signed short (*v22) (unsigned char, unsigned char, signed char);
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed int, signed char);
extern void (*v28) (signed int, signed char);
unsigned int v29 (signed int);
unsigned int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v100 = -1;
unsigned char v99 = 7;
signed char v98 = -1;

unsigned int v29 (signed int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 5;
unsigned int v103 = 3U;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
case 3: 
return v103;
default: abort ();
}
}
}
}

signed char v15 (unsigned int v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 3U;
unsigned char v108 = 6;
signed char v107 = 1;
trace++;
switch (trace)
{
case 1: 
return -4;
default: abort ();
}
}
}
}

unsigned char v13 (signed char v110, unsigned short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 6U;
signed int v113 = -2;
unsigned char v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
signed char v117 = -2;
unsigned int v116 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
