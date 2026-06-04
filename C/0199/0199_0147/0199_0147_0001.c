#include <stdlib.h>
extern signed char v3 (signed char, signed int);
extern signed char (*v4) (signed char, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned char v7 (unsigned char, signed char, signed int);
unsigned char (*v8) (unsigned char, signed char, signed int) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
signed short v11 (signed char, signed short);
signed short (*v12) (signed char, signed short) = v11;
signed short v13 (unsigned short);
signed short (*v14) (unsigned short) = v13;
unsigned int v15 (signed int, signed short, signed short);
unsigned int (*v16) (signed int, signed short, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (signed short, unsigned int, unsigned short, signed char);
extern unsigned int v21 (unsigned char, unsigned int, signed char);
extern unsigned int (*v22) (unsigned char, unsigned int, signed char);
extern signed short v23 (signed short);
extern signed short (*v24) (signed short);
extern unsigned int v25 (signed short, signed char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, signed char, signed short, unsigned short);
signed char v27 (unsigned short, signed short, unsigned int, unsigned char);
signed char (*v28) (unsigned short, signed short, unsigned int, unsigned char) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 5;
unsigned char v70 = 0;
signed short v69 = -2;

signed char v27 (unsigned short v72, signed short v73, unsigned int v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -1;
signed char v77 = 3;
signed char v76 = -4;
trace++;
switch (trace)
{
case 2: 
return v77;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned int v15 (signed int v79, signed short v80, signed short v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 1;
signed short v83 = 0;
signed char v82 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 1U;
unsigned int v87 = 0U;
signed char v86 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v89, signed short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 1;
unsigned int v92 = 4U;
unsigned short v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v94, signed char v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -1;
signed char v98 = -3;
unsigned short v97 = 4;
trace++;
switch (trace)
{
case 5: 
return v94;
default: abort ();
}
}
}
}
