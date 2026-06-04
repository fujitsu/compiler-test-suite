#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int, unsigned short);
extern void (*v6) (unsigned int, unsigned short);
void v7 (signed short, signed short);
void (*v8) (signed short, signed short) = v7;
unsigned int v9 (unsigned int, unsigned short);
unsigned int (*v10) (unsigned int, unsigned short) = v9;
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned short v23 (unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (unsigned short, signed char, unsigned char);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern signed char v29 (signed short, unsigned short, signed char, unsigned char);
extern signed char (*v30) (signed short, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 5U;
unsigned short v72 = 5;
unsigned short v71 = 5;

unsigned char v19 (void)
{
{
for (;;) {
signed short v76 = -4;
signed char v75 = -3;
unsigned short v74 = 7;
trace++;
switch (trace)
{
case 1: 
return 2;
case 3: 
{
signed char v77;
signed short v78;
unsigned int v79;
v77 = 1 - -3;
v78 = v76 + 1;
v79 = v25 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed char v82 = -2;
signed char v81 = -1;
signed char v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v83, unsigned short v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -2;
unsigned int v86 = 4U;
unsigned int v85 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v88, signed short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 3;
unsigned int v91 = 7U;
unsigned char v90 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
