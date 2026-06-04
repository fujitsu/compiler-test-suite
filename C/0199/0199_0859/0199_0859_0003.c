#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, unsigned char, unsigned char);
signed short v5 (unsigned char, unsigned char);
signed short (*v6) (unsigned char, unsigned char) = v5;
extern signed char v7 (unsigned int, unsigned char, unsigned int);
extern signed char (*v8) (unsigned int, unsigned char, unsigned int);
void v9 (signed int, unsigned short, signed int);
void (*v10) (signed int, unsigned short, signed int) = v9;
extern unsigned short v11 (unsigned short, signed char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (signed char, signed char);
extern void (*v16) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, signed char, unsigned short, signed int);
extern signed char (*v22) (signed short, signed char, unsigned short, signed int);
extern signed short v23 (unsigned char, unsigned short, unsigned short, signed short);
extern signed short (*v24) (unsigned char, unsigned short, unsigned short, signed short);
signed int v25 (unsigned short);
signed int (*v26) (unsigned short) = v25;
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 6U;
signed char v90 = -2;
unsigned short v89 = 1;

unsigned char v29 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 1U;
signed char v94 = -1;
unsigned char v93 = 2;
trace++;
switch (trace)
{
case 5: 
return 4;
default: abort ();
}
}
}
}

unsigned short v27 (void)
{
{
for (;;) {
signed short v98 = -1;
unsigned short v97 = 4;
unsigned char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 5;
signed char v101 = -4;
unsigned char v100 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v103, unsigned short v104, signed int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 4;
signed int v107 = -1;
signed short v106 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 0;
signed char v112 = -3;
unsigned short v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
