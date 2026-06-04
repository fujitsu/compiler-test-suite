#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned short, signed short, unsigned int, signed char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned int, signed int);
extern signed int (*v6) (signed short, unsigned int, signed int);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (unsigned short, signed int, unsigned int);
extern void (*v10) (unsigned short, signed int, unsigned int);
extern unsigned char v11 (signed int, unsigned int, signed short, signed short);
extern unsigned char (*v12) (signed int, unsigned int, signed short, signed short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
signed char v17 (unsigned char, unsigned int, unsigned char, unsigned short);
signed char (*v18) (unsigned char, unsigned int, unsigned char, unsigned short) = v17;
extern unsigned int v19 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned char);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned int v29 (unsigned char, signed int, signed short, signed char);
unsigned int (*v30) (unsigned char, signed int, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v83 = -3;
unsigned short v82 = 0;
signed char v81 = -3;

unsigned int v29 (unsigned char v84, signed int v85, signed short v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 5;
signed char v89 = 1;
signed int v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
signed short v93 = -4;
signed short v92 = -1;
unsigned short v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v94, unsigned int v95, unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 1;
unsigned short v99 = 1;
unsigned char v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed short v103 = -4;
signed char v102 = -1;
signed short v101 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed int v104;
unsigned int v105;
signed short v106;
signed short v107;
unsigned char v108;
v104 = -2 + 3;
v105 = 6U - 4U;
v106 = -1 - v101;
v107 = v101 + -3;
v108 = v11 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 6: 
return 4;
case 12: 
return 6;
default: abort ();
}
}
}
}
