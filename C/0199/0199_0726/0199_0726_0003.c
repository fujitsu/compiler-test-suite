#include <stdlib.h>
extern signed short v1 (signed char, signed int, signed short, unsigned short);
extern signed short (*v2) (signed char, signed int, signed short, unsigned short);
extern signed int v3 (unsigned int, unsigned short, unsigned int, signed char);
extern signed int (*v4) (unsigned int, unsigned short, unsigned int, signed char);
signed char v7 (signed short, unsigned char);
signed char (*v8) (signed short, unsigned char) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
unsigned char v17 (signed int);
unsigned char (*v18) (signed int) = v17;
extern signed char v19 (unsigned int, signed char);
extern signed char (*v20) (unsigned int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (unsigned short, signed short, signed short);
extern signed char (*v24) (unsigned short, signed short, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
signed char v27 (unsigned int, signed short);
signed char (*v28) (unsigned int, signed short) = v27;
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 0U;
signed char v76 = -4;
signed short v75 = -2;

signed char v27 (unsigned int v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -2;
signed int v81 = -3;
unsigned short v80 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 3U;
signed char v85 = -3;
signed short v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned char v89 = 5;
signed short v88 = -3;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed char v92 = 1;
unsigned char v91 = 0;
signed char v90 = 1;
trace++;
switch (trace)
{
case 1: 
return v90;
default: abort ();
}
}
}
}

signed char v7 (signed short v93, unsigned char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -3;
signed char v96 = -2;
unsigned char v95 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
