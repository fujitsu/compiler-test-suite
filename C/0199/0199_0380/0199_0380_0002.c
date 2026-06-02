#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned short, unsigned char, signed char, unsigned char);
extern signed int (*v6) (unsigned short, unsigned char, signed char, unsigned char);
void v7 (signed char, unsigned short, signed int, signed short);
void (*v8) (signed char, unsigned short, signed int, signed short) = v7;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int, unsigned int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern signed int v23 (unsigned int, unsigned int, signed short, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed short, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (signed short);
void (*v28) (signed short) = v27;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v74 = 1U;
signed char v73 = -2;
signed char v72 = -1;

void v27 (signed short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 5;
signed int v77 = 3;
unsigned char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v81 = -1;
unsigned char v80 = 0;
signed short v79 = 3;
trace++;
switch (trace)
{
case 4: 
return v80;
case 8: 
{
unsigned short v82;
v82 = v25 ();
history[history_index++] = (int)v82;
}
break;
case 10: 
{
signed char v83;
v83 = v81 + v81;
v29 (v83);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed char v19 (unsigned char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 3;
signed char v86 = 1;
signed int v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed char v90 = -3;
signed int v89 = -2;
signed int v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v91, unsigned short v92, signed int v93, signed short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 1;
unsigned char v96 = 1;
signed short v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
