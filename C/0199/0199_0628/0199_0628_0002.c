#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
unsigned int v3 (signed short, unsigned int);
unsigned int (*v4) (signed short, unsigned int) = v3;
extern unsigned short v5 (unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned short, unsigned char);
extern signed short v7 (unsigned short, unsigned int, unsigned int, signed int);
extern signed short (*v8) (unsigned short, unsigned int, unsigned int, signed int);
void v9 (signed char);
void (*v10) (signed char) = v9;
extern void v11 (signed int, signed int, unsigned short, unsigned char);
extern void (*v12) (signed int, signed int, unsigned short, unsigned char);
signed char v13 (signed int, signed char, unsigned short);
signed char (*v14) (signed int, signed char, unsigned short) = v13;
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v19 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v20) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int (*v24) (unsigned int, signed short, unsigned int, unsigned int);
void v25 (unsigned int, unsigned int);
void (*v26) (unsigned int, unsigned int) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (signed short, signed char, signed char, unsigned short);
extern void (*v30) (signed short, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v78 = 1;
unsigned char v77 = 6;
unsigned int v76 = 4U;

unsigned char v27 (void)
{
{
for (;;) {
signed char v81 = -2;
signed short v80 = 1;
signed char v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned int v82, unsigned int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 2;
unsigned short v85 = 7;
unsigned char v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v87, signed char v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 2;
unsigned char v91 = 2;
signed short v90 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 3U;
unsigned char v95 = 1;
signed int v94 = -2;
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

unsigned int v3 (signed short v97, unsigned int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 6U;
signed short v100 = 0;
signed char v99 = -2;
trace++;
switch (trace)
{
case 6: 
return v101;
default: abort ();
}
}
}
}
