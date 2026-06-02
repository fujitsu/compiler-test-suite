#include <stdlib.h>
extern void v1 (signed short);
extern void (*v2) (signed short);
extern unsigned short v3 (unsigned short, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, signed char);
signed char v5 (unsigned short, unsigned char);
signed char (*v6) (unsigned short, unsigned char) = v5;
void v7 (void);
void (*v8) (void) = v7;
signed short v9 (signed short, signed int, signed int, unsigned char);
signed short (*v10) (signed short, signed int, signed int, unsigned char) = v9;
void v11 (unsigned char, unsigned char, signed char);
void (*v12) (unsigned char, unsigned char, signed char) = v11;
unsigned short v15 (unsigned int, unsigned int, signed char, signed int);
unsigned short (*v16) (unsigned int, unsigned int, signed char, signed int) = v15;
extern unsigned int v17 (signed short, unsigned short, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
unsigned char v27 (unsigned int, signed short);
unsigned char (*v28) (unsigned int, signed short) = v27;
extern void v29 (signed char, signed short);
extern void (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 1;
signed char v76 = 3;
unsigned int v75 = 5U;

unsigned char v27 (unsigned int v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
unsigned int v81 = 0U;
unsigned int v80 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v83, unsigned int v84, signed char v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 0;
unsigned char v88 = 3;
signed short v87 = 1;
trace++;
switch (trace)
{
case 6: 
return 2;
case 8: 
return 6;
default: abort ();
}
}
}
}

void v11 (unsigned char v90, unsigned char v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -3;
unsigned int v94 = 2U;
signed int v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v96, signed int v97, signed int v98, unsigned char v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 5;
unsigned char v101 = 4;
signed short v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed char v105 = -4;
signed short v104 = 1;
unsigned short v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v106, unsigned char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 0;
signed short v109 = 2;
signed char v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
