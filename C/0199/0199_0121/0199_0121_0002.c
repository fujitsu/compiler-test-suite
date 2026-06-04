#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
signed char v7 (unsigned int);
signed char (*v8) (unsigned int) = v7;
void v9 (void);
void (*v10) (void) = v9;
void v11 (unsigned char, signed int, signed int);
void (*v12) (unsigned char, signed int, signed int) = v11;
extern signed char v13 (signed int, signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short, unsigned short);
extern unsigned int v15 (signed char, unsigned int);
extern unsigned int (*v16) (signed char, unsigned int);
extern unsigned int v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned char, signed short, signed short, unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (signed int, unsigned int, signed int, unsigned short);
extern unsigned char (*v22) (signed int, unsigned int, signed int, unsigned short);
extern unsigned char v23 (signed char, unsigned char, signed char);
extern unsigned char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
unsigned short v27 (signed char, unsigned char, unsigned short);
unsigned short (*v28) (signed char, unsigned char, unsigned short) = v27;
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = -3;
signed int v89 = -3;
signed short v88 = 1;

unsigned short v27 (signed char v91, unsigned char v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 3;
signed char v95 = -2;
unsigned char v94 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v97, signed int v98, signed int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 7;
signed char v101 = -4;
signed char v100 = -2;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned char v105 = 0;
unsigned short v104 = 7;
unsigned short v103 = 4;
trace++;
switch (trace)
{
case 3: 
return;
case 10: 
{
signed char v106;
unsigned int v107;
unsigned int v108;
v106 = -2 + 2;
v107 = 0U + 5U;
v108 = v15 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v7 (unsigned int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 7;
unsigned int v111 = 1U;
signed short v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
