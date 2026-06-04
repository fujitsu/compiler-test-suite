#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed short, unsigned short);
unsigned char v3 (unsigned int, unsigned int);
unsigned char (*v4) (unsigned int, unsigned int) = v3;
signed int v5 (unsigned short);
signed int (*v6) (unsigned short) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
unsigned short v9 (unsigned char);
unsigned short (*v10) (unsigned char) = v9;
extern void v11 (signed short, unsigned int, signed int);
extern void (*v12) (signed short, unsigned int, signed int);
extern unsigned short v13 (unsigned short, signed char);
extern unsigned short (*v14) (unsigned short, signed char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed char v19 (unsigned short, signed int, signed char);
extern signed char (*v20) (unsigned short, signed int, signed char);
extern signed short v21 (signed short, unsigned short, unsigned int, signed short);
extern signed short (*v22) (signed short, unsigned short, unsigned int, signed short);
extern unsigned int v23 (signed char, unsigned char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char, signed short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
void v29 (signed char, signed int, unsigned int);
void (*v30) (signed char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 0U;
unsigned int v76 = 3U;
signed int v75 = 0;

void v29 (signed char v78, signed int v79, unsigned int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 3;
unsigned int v82 = 2U;
unsigned char v81 = 6;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v86 = 1;
signed short v85 = -4;
unsigned short v84 = 4;
trace++;
switch (trace)
{
case 2: 
return 6;
case 5: 
return 5;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 0;
unsigned char v89 = 3;
signed char v88 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed int v93 = -4;
unsigned short v92 = 2;
unsigned int v91 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -3;
unsigned char v96 = 5;
signed short v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 0;
unsigned int v101 = 0U;
signed short v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
