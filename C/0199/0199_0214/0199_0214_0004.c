#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
unsigned int v7 (unsigned char, signed int, signed char, unsigned short);
unsigned int (*v8) (unsigned char, signed int, signed char, unsigned short) = v7;
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v21 (signed short, signed short);
signed char (*v22) (signed short, signed short) = v21;
extern signed short v23 (signed short, signed char, unsigned int);
extern signed short (*v24) (signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short, unsigned short);
signed short v27 (unsigned char, unsigned int);
signed short (*v28) (unsigned char, unsigned int) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 2;
signed char v100 = -4;
signed short v99 = 3;

signed short v27 (unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 3;
unsigned char v105 = 1;
unsigned char v104 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v107;
v107 = v29 ();
history[history_index++] = (int)v107;
}
break;
case 13: 
return v106;
default: abort ();
}
}
}
}

signed char v21 (signed short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 1;
signed char v111 = -4;
signed short v110 = -2;
trace++;
switch (trace)
{
case 7: 
return -4;
default: abort ();
}
}
}
}

void v15 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -3;
signed short v115 = 0;
unsigned int v114 = 2U;
trace++;
switch (trace)
{
case 1: 
return;
case 4: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v117, signed int v118, signed char v119, unsigned short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 2;
signed int v122 = 3;
unsigned int v121 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
