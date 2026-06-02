#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
unsigned short v5 (unsigned short, signed int, unsigned char, unsigned short);
unsigned short (*v6) (unsigned short, signed int, unsigned char, unsigned short) = v5;
extern signed char v7 (unsigned int, signed char, unsigned int);
extern signed char (*v8) (unsigned int, signed char, unsigned int);
extern signed short v9 (unsigned char, unsigned char, unsigned char);
extern signed short (*v10) (unsigned char, unsigned char, unsigned char);
unsigned int v11 (signed short, signed char, unsigned short, unsigned short);
unsigned int (*v12) (signed short, signed char, unsigned short, unsigned short) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
signed short v15 (unsigned int, unsigned short, signed int);
signed short (*v16) (unsigned int, unsigned short, signed int) = v15;
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
signed int v19 (unsigned char, unsigned short, signed int, signed short);
signed int (*v20) (unsigned char, unsigned short, signed int, signed short) = v19;
extern unsigned char v21 (unsigned char, unsigned char, signed char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char, signed char);
void v23 (void);
void (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned char v29 (unsigned char, signed short, signed char, signed int);
extern unsigned char (*v30) (unsigned char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = -1;
unsigned int v65 = 6U;
signed int v64 = -3;

void v23 (void)
{
{
for (;;) {
signed int v69 = -3;
unsigned int v68 = 0U;
signed char v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v70, unsigned short v71, signed int v72, signed short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 3U;
unsigned int v75 = 3U;
signed int v74 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -1;
signed int v79 = -1;
unsigned char v78 = 4;
trace++;
switch (trace)
{
case 3: 
return v80;
case 8: 
return v80;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v81, unsigned short v82, signed int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -4;
signed char v85 = 2;
unsigned int v84 = 5U;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v87, signed char v88, unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 4;
signed short v92 = -1;
signed int v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v94, signed int v95, unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -2;
signed char v99 = 3;
signed char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
