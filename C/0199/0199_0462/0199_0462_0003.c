#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
extern unsigned short v7 (signed short, signed short, signed char, signed int);
extern unsigned short (*v8) (signed short, signed short, signed char, signed int);
extern signed char v9 (unsigned int, signed int);
extern signed char (*v10) (unsigned int, signed int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, signed short, signed short, signed int);
extern void (*v22) (unsigned int, signed short, signed short, signed int);
extern unsigned char v23 (signed short, signed char, signed char);
extern unsigned char (*v24) (signed short, signed char, signed char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (signed int, signed int);
extern void (*v28) (signed int, signed int);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 4;
unsigned char v104 = 3;
unsigned int v103 = 1U;

unsigned short v29 (void)
{
{
for (;;) {
unsigned int v108 = 1U;
unsigned char v107 = 2;
signed char v106 = 0;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed int v111 = 0;
signed short v110 = 2;
unsigned char v109 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed int v114 = -2;
signed char v113 = -2;
unsigned short v112 = 4;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v115;
v115 = v19 ();
history[history_index++] = (int)v115;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed short v118 = 2;
unsigned char v117 = 1;
unsigned int v116 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
