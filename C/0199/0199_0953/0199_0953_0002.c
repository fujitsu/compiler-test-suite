#include <stdlib.h>
unsigned char v1 (signed char);
unsigned char (*v2) (signed char) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int, signed int, unsigned int);
signed char v9 (unsigned char, unsigned int, signed short);
signed char (*v10) (unsigned char, unsigned int, signed short) = v9;
extern unsigned char v11 (unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, signed short);
extern void v13 (unsigned short, signed short);
extern void (*v14) (unsigned short, signed short);
extern unsigned int v15 (signed short, unsigned short);
extern unsigned int (*v16) (signed short, unsigned short);
unsigned int v17 (signed int, signed short);
unsigned int (*v18) (signed int, signed short) = v17;
unsigned char v19 (signed char, unsigned char, unsigned char);
unsigned char (*v20) (signed char, unsigned char, unsigned char) = v19;
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char, unsigned short);
extern void (*v26) (unsigned char, unsigned short);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern void v29 (unsigned int, unsigned char, unsigned short, signed int);
extern void (*v30) (unsigned int, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 1;
unsigned int v79 = 5U;
signed int v78 = 0;

unsigned char v19 (signed char v81, unsigned char v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 4U;
signed short v85 = -3;
signed char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 7;
unsigned char v90 = 7;
signed short v89 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v92, unsigned int v93, signed short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 0;
signed char v96 = 3;
signed char v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 2;
unsigned int v100 = 5U;
signed char v99 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v102;
unsigned short v103;
v102 = 3 - 0;
v103 = 6 - 3;
v25 (v102, v103);
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
