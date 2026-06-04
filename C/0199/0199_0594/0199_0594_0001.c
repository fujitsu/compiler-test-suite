#include <stdlib.h>
signed int v3 (unsigned int, unsigned short, unsigned char);
signed int (*v4) (unsigned int, unsigned short, unsigned char) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned short);
extern void v15 (unsigned int, unsigned char, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
unsigned int v21 (unsigned short, unsigned char, unsigned int);
unsigned int (*v22) (unsigned short, unsigned char, unsigned int) = v21;
unsigned short v23 (unsigned char, signed short);
unsigned short (*v24) (unsigned char, signed short) = v23;
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed short v27 (unsigned short, signed int, signed int);
extern signed short (*v28) (unsigned short, signed int, signed int);
extern unsigned short v29 (unsigned int, signed short, signed int);
extern unsigned short (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v78 = 2;
signed int v77 = -4;
unsigned short v76 = 4;

unsigned short v23 (unsigned char v79, signed short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -2;
unsigned int v82 = 7U;
signed short v81 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v84, unsigned char v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 4U;
unsigned short v88 = 3;
signed int v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v92 = -4;
signed int v91 = -3;
unsigned char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v93, unsigned short v94, unsigned char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 1U;
signed int v97 = 2;
signed char v96 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v99;
v99 = v11 ();
history[history_index++] = (int)v99;
}
break;
case 8: 
{
signed int v100;
unsigned short v101;
unsigned short v102;
v100 = -4 - v97;
v101 = v94 - 4;
v102 = v13 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 10: 
{
unsigned short v103;
v103 = v11 ();
history[history_index++] = (int)v103;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
