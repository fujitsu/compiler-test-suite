#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (signed int, unsigned short);
extern unsigned char (*v6) (signed int, unsigned short);
extern signed int v7 (unsigned char, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed char, unsigned char, signed char);
extern unsigned short (*v12) (signed char, unsigned char, signed char);
signed short v13 (unsigned short, unsigned short, signed short);
signed short (*v14) (unsigned short, unsigned short, signed short) = v13;
signed char v15 (signed short, unsigned short, unsigned int, signed short);
signed char (*v16) (signed short, unsigned short, unsigned int, signed short) = v15;
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
signed int v19 (signed short);
signed int (*v20) (signed short) = v19;
extern signed short v21 (unsigned int, signed int);
extern signed short (*v22) (unsigned int, signed int);
void v23 (signed char, signed char);
void (*v24) (signed char, signed char) = v23;
unsigned int v25 (unsigned int, signed short, signed char);
unsigned int (*v26) (unsigned int, signed short, signed char) = v25;
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
extern signed short v29 (signed char, unsigned int);
extern signed short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 6U;
signed int v64 = 0;
signed char v63 = 2;

signed short v27 (unsigned short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = 0;
unsigned short v68 = 5;
unsigned char v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned int v70, signed short v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 6U;
signed char v74 = -4;
unsigned short v73 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v76, signed char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 2;
unsigned short v79 = 0;
unsigned int v78 = 3U;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed int v19 (signed short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 1;
signed char v83 = 3;
unsigned char v82 = 5;
trace++;
switch (trace)
{
case 8: 
return -3;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed char v15 (signed short v85, unsigned short v86, unsigned int v87, signed short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 2;
unsigned int v90 = 5U;
unsigned int v89 = 0U;
trace++;
switch (trace)
{
case 2: 
return -3;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v92, unsigned short v93, signed short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -1;
signed int v96 = 0;
signed int v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
