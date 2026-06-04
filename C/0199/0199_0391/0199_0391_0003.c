#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed int);
extern unsigned char (*v2) (unsigned short, unsigned char, signed int);
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern signed short v13 (signed short, signed char, unsigned char);
extern signed short (*v14) (signed short, signed char, unsigned char);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
unsigned int v17 (signed char, unsigned char, signed short, signed int);
unsigned int (*v18) (signed char, unsigned char, signed short, signed int) = v17;
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed char v25 (signed int, signed char, signed short, unsigned short);
extern signed char (*v26) (signed int, signed char, signed short, unsigned short);
unsigned short v27 (unsigned char, signed short);
unsigned short (*v28) (unsigned char, signed short) = v27;
unsigned short v29 (signed char, signed short, unsigned char, unsigned short);
unsigned short (*v30) (signed char, signed short, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v96 = 2U;
signed char v95 = 1;
unsigned char v94 = 7;

unsigned short v29 (signed char v97, signed short v98, unsigned char v99, unsigned short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 3;
signed short v102 = 0;
unsigned short v101 = 6;
trace++;
switch (trace)
{
case 1: 
return v100;
default: abort ();
}
}
}
}

unsigned short v27 (unsigned char v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 4;
unsigned int v107 = 0U;
signed short v106 = -3;
trace++;
switch (trace)
{
case 8: 
return 6;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v109, unsigned char v110, signed short v111, signed int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 1;
signed char v114 = 1;
signed short v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -4;
unsigned char v118 = 2;
unsigned short v117 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
