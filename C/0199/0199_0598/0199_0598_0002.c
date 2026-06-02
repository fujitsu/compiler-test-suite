#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern signed short v5 (unsigned short, signed char);
extern signed short (*v6) (unsigned short, signed char);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
signed short v9 (signed int, unsigned short, signed char, unsigned short);
signed short (*v10) (signed int, unsigned short, signed char, unsigned short) = v9;
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
unsigned char v13 (unsigned short, signed char, unsigned char, signed char);
unsigned char (*v14) (unsigned short, signed char, unsigned char, signed char) = v13;
unsigned int v15 (signed int);
unsigned int (*v16) (signed int) = v15;
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed short);
void v23 (unsigned short, signed int, signed int, unsigned short);
void (*v24) (unsigned short, signed int, signed int, unsigned short) = v23;
extern signed char v25 (unsigned char, signed int, unsigned int);
extern signed char (*v26) (unsigned char, signed int, unsigned int);
extern signed short v27 (signed char, unsigned char, unsigned int);
extern signed short (*v28) (signed char, unsigned char, unsigned int);
extern unsigned int v29 (unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 0;
unsigned short v74 = 4;
unsigned char v73 = 2;

void v23 (unsigned short v76, signed int v77, signed int v78, unsigned short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 1;
signed short v81 = 3;
signed short v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 1;
signed char v85 = 1;
signed char v84 = 2;
trace++;
switch (trace)
{
case 5: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v87, signed char v88, unsigned char v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 0;
unsigned short v92 = 0;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v94, unsigned short v95, signed char v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 1;
signed char v99 = 3;
signed int v98 = 0;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed short v103 = -3;
unsigned int v102 = 2U;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
