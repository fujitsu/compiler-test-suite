#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern void v3 (signed int, signed char);
extern void (*v4) (signed int, signed char);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned char, unsigned int, unsigned int);
extern unsigned int v19 (signed char, unsigned char);
extern unsigned int (*v20) (signed char, unsigned char);
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (unsigned int, signed short, signed int, signed int);
unsigned short (*v26) (unsigned int, signed short, signed int, signed int) = v25;
extern unsigned int v27 (signed short, signed short, signed short, unsigned short);
extern unsigned int (*v28) (signed short, signed short, signed short, unsigned short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 7U;
unsigned short v81 = 0;
signed short v80 = -4;

unsigned short v25 (unsigned int v83, signed short v84, signed int v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 0;
unsigned int v88 = 1U;
unsigned int v87 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 1;
unsigned int v92 = 5U;
unsigned int v91 = 0U;
trace++;
switch (trace)
{
case 10: 
return 4;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed short v96 = -3;
signed int v95 = -3;
signed short v94 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v97;
signed char v98;
v97 = v95 + -4;
v98 = 3 + 1;
v3 (v97, v98);
}
break;
case 2: 
{
signed int v99;
signed char v100;
v99 = 1 + -4;
v100 = -1 + 2;
v3 (v99, v100);
}
break;
case 4: 
{
unsigned char v101;
signed int v102;
signed char v103;
v101 = 6 + 2;
v102 = v95 + -1;
v103 = v9 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
