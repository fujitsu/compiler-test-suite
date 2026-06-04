#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
signed char v3 (unsigned int, unsigned int, unsigned char);
signed char (*v4) (unsigned int, unsigned int, unsigned char) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned short v7 (signed short, unsigned int, signed short, signed int);
unsigned short (*v8) (signed short, unsigned int, signed short, signed int) = v7;
extern signed char v9 (unsigned int, unsigned int, unsigned int, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned int, signed short);
void v11 (unsigned int, unsigned int, unsigned short, signed short);
void (*v12) (unsigned int, unsigned int, unsigned short, signed short) = v11;
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned char v17 (unsigned char);
extern unsigned char (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (signed int, signed int);
extern unsigned int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 5;
unsigned int v93 = 0U;
signed short v92 = 0;

signed short v15 (void)
{
{
for (;;) {
signed char v97 = 2;
unsigned short v96 = 1;
unsigned short v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v98, unsigned int v99, unsigned short v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
unsigned char v103 = 3;
signed short v102 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v105, unsigned int v106, signed short v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 0;
unsigned char v110 = 5;
signed int v109 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed short v112;
unsigned short v113;
v112 = v107 - v105;
v113 = v13 (v112);
history[history_index++] = (int)v113;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v114, unsigned int v115, unsigned char v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 0;
unsigned int v118 = 2U;
signed int v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
