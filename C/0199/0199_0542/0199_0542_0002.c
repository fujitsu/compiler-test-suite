#include <stdlib.h>
signed short v3 (signed int, signed short, signed int);
signed short (*v4) (signed int, signed short, signed int) = v3;
signed short v5 (unsigned short, signed int, unsigned char);
signed short (*v6) (unsigned short, signed int, unsigned char) = v5;
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned int);
signed char v17 (unsigned char, signed int, signed short);
signed char (*v18) (unsigned char, signed int, signed short) = v17;
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
unsigned int v21 (unsigned int, unsigned char, signed short, signed short);
unsigned int (*v22) (unsigned int, unsigned char, signed short, signed short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (signed char, signed int, unsigned char);
extern unsigned char (*v28) (signed char, signed int, unsigned char);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 7;
unsigned char v82 = 4;
signed short v81 = 1;

unsigned int v25 (void)
{
{
for (;;) {
signed short v86 = -3;
signed short v85 = -2;
unsigned char v84 = 5;
trace++;
switch (trace)
{
case 4: 
return 4U;
case 6: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v87, unsigned char v88, signed short v89, signed short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 2U;
signed short v92 = -3;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v94, signed int v95, signed short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
unsigned short v98 = 6;
signed char v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v100, signed int v101, unsigned char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 0U;
unsigned short v104 = 1;
signed short v103 = -3;
trace++;
switch (trace)
{
case 1: 
return v103;
default: abort ();
}
}
}
}

signed short v3 (signed int v106, signed short v107, signed int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 3;
unsigned short v110 = 3;
unsigned char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
