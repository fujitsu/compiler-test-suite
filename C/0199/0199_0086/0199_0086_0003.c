#include <stdlib.h>
unsigned short v1 (unsigned int, signed char, signed char);
unsigned short (*v2) (unsigned int, signed char, signed char) = v1;
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
void v7 (void);
void (*v8) (void) = v7;
void v9 (unsigned int, unsigned char, signed char);
void (*v10) (unsigned int, unsigned char, signed char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
signed short v13 (unsigned char, signed int, unsigned short, unsigned int);
signed short (*v14) (unsigned char, signed int, unsigned short, unsigned int) = v13;
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, unsigned char, unsigned short, signed short);
extern signed char (*v20) (signed int, unsigned char, unsigned short, signed short);
extern void v21 (signed char, unsigned int, unsigned short);
extern void (*v22) (signed char, unsigned int, unsigned short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern void v27 (signed short, unsigned int);
extern void (*v28) (signed short, unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v96 = 3U;
unsigned int v95 = 4U;
signed char v94 = 0;

signed short v13 (unsigned char v97, signed int v98, unsigned short v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 2;
unsigned short v102 = 1;
unsigned short v101 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v104, unsigned char v105, signed char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 7U;
unsigned char v108 = 6;
signed int v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned short v112 = 3;
unsigned int v111 = 0U;
unsigned short v110 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v113, signed char v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -3;
signed char v117 = -1;
unsigned char v116 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
v119 = v29 ();
history[history_index++] = (int)v119;
}
break;
case 16: 
return 5;
default: abort ();
}
}
}
}
