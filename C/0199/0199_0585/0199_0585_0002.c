#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned char);
extern signed int (*v2) (unsigned int, unsigned char);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed int v5 (signed char);
signed int (*v6) (signed char) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned char);
signed short v21 (signed int, signed short, signed int);
signed short (*v22) (signed int, signed short, signed int) = v21;
signed short v23 (signed char);
signed short (*v24) (signed char) = v23;
extern unsigned int v25 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, unsigned short, unsigned short, signed short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 2;
unsigned short v79 = 3;
signed char v78 = 2;

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v83 = 1;
signed char v82 = -2;
signed int v81 = -1;
trace++;
switch (trace)
{
case 4: 
return 3U;
case 8: 
return 6U;
default: abort ();
}
}
}
}

signed short v23 (signed char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -2;
signed char v86 = -1;
signed char v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v88, signed short v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 4;
unsigned char v92 = 4;
signed char v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 5;
unsigned int v96 = 1U;
signed int v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned short v100 = 2;
signed int v99 = 2;
signed int v98 = 2;
trace++;
switch (trace)
{
case 1: 
return -4;
default: abort ();
}
}
}
}

signed int v5 (signed char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -3;
signed short v103 = -4;
signed int v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
