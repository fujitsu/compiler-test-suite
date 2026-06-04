#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (signed char, unsigned char, signed char, signed char);
extern unsigned int (*v4) (signed char, unsigned char, signed char, signed char);
void v5 (unsigned short, unsigned short, signed int);
void (*v6) (unsigned short, unsigned short, signed int) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern void v19 (signed short, unsigned int);
extern void (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, signed char, signed int, unsigned char);
extern void (*v22) (unsigned short, signed char, signed int, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (signed int, unsigned short, unsigned short);
void (*v26) (signed int, unsigned short, unsigned short) = v25;
extern unsigned int v27 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v28) (unsigned char, signed short, signed char, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v89 = 2;
signed short v88 = -1;
signed char v87 = 0;

void v25 (signed int v90, unsigned short v91, unsigned short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 6U;
unsigned char v94 = 3;
signed char v93 = -4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v98 = 5U;
signed int v97 = -1;
signed char v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned char v101 = 6;
signed char v100 = 2;
signed int v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v102, unsigned short v103, signed int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = -1;
signed int v106 = 1;
unsigned char v105 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
