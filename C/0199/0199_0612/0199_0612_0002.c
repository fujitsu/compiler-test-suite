#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed char, unsigned short, unsigned char);
extern signed char (*v6) (signed char, unsigned short, unsigned char);
signed int v7 (signed short, unsigned short, signed short);
signed int (*v8) (signed short, unsigned short, signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
unsigned int v13 (unsigned char, signed char, signed short);
unsigned int (*v14) (unsigned char, signed char, signed short) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned int v19 (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
signed int v27 (signed int);
signed int (*v28) (signed int) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = 1;
signed char v88 = -2;
unsigned int v87 = 5U;

signed int v27 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 7U;
unsigned int v92 = 1U;
unsigned int v91 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v96 = 0;
unsigned short v95 = 3;
signed int v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v97, signed char v98, signed short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 4;
signed short v101 = -3;
unsigned short v100 = 1;
trace++;
switch (trace)
{
case 1: 
return 0U;
default: abort ();
}
}
}
}

signed int v7 (signed short v103, unsigned short v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 3;
unsigned char v107 = 2;
signed short v106 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
