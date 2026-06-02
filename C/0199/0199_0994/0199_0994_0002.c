#include <stdlib.h>
extern void v1 (signed int, signed char, signed int, signed short);
extern void (*v2) (signed int, signed char, signed int, signed short);
void v3 (unsigned char, signed char, unsigned short);
void (*v4) (unsigned char, signed char, unsigned short) = v3;
extern unsigned char v5 (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char v7 (signed int, unsigned char);
extern signed char (*v8) (signed int, unsigned char);
extern unsigned char v11 (unsigned int, signed char, signed int);
extern unsigned char (*v12) (unsigned int, signed char, signed int);
unsigned int v13 (unsigned char, signed short, signed char);
unsigned int (*v14) (unsigned char, signed short, signed char) = v13;
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned int v19 (signed short);
unsigned int (*v20) (signed short) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
void v25 (void);
void (*v26) (void) = v25;
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = -4;
signed int v86 = -1;
signed char v85 = 1;

void v25 (void)
{
{
for (;;) {
unsigned char v90 = 1;
unsigned int v89 = 3U;
unsigned short v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 7;
unsigned char v93 = 5;
unsigned short v92 = 6;
trace++;
switch (trace)
{
case 4: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v95, signed short v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 1;
unsigned int v99 = 3U;
signed int v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v101, signed char v102, unsigned short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 3U;
unsigned char v105 = 2;
unsigned short v104 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
