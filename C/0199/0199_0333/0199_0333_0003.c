#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed int v5 (signed short, unsigned char, signed char);
extern signed int (*v6) (signed short, unsigned char, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed int v11 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char, unsigned short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
signed short v15 (unsigned short, signed int, unsigned char);
signed short (*v16) (unsigned short, signed int, unsigned char) = v15;
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
unsigned short v23 (signed char);
unsigned short (*v24) (signed char) = v23;
unsigned short v25 (unsigned int, unsigned short, signed int);
unsigned short (*v26) (unsigned int, unsigned short, signed int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned int, signed short);
extern unsigned char (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = -3;
unsigned char v93 = 4;
unsigned short v92 = 7;

unsigned short v25 (unsigned int v95, unsigned short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 2;
signed int v99 = 0;
unsigned short v98 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v101;
signed int v102;
unsigned int v103;
v101 = v100 + -1;
v102 = v97 - v97;
v103 = v9 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 3: 
return 1;
default: abort ();
}
}
}
}

unsigned short v23 (signed char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = -1;
unsigned int v106 = 5U;
signed short v105 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v108, signed int v109, unsigned char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 0;
signed short v112 = 2;
unsigned short v111 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned int v116 = 1U;
signed short v115 = -1;
signed int v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
