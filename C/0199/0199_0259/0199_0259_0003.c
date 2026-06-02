#include <stdlib.h>
unsigned short v1 (signed short, signed int, signed int);
unsigned short (*v2) (signed short, signed int, signed int) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (unsigned char, unsigned char);
signed char (*v6) (unsigned char, unsigned char) = v5;
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
static void v9 (signed short, signed int);
static void (*v10) (signed short, signed int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, unsigned int);
extern signed short (*v14) (signed int, unsigned int);
extern void v15 (signed int, signed char, signed short);
extern void (*v16) (signed int, signed char, signed short);
extern void v17 (unsigned int, signed short);
extern void (*v18) (unsigned int, signed short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned int, unsigned int, signed short, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 2;
signed int v81 = -4;
unsigned int v80 = 0U;

static void v9 (signed short v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
signed int v86 = 1;
signed int v85 = -2;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
return;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v88, unsigned char v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -4;
signed char v91 = 0;
signed char v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v93, signed int v94, signed int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -2;
signed short v97 = 0;
unsigned int v96 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed short v99;
signed int v100;
v99 = -4 + v98;
v100 = v95 + v94;
v9 (v99, v100);
}
break;
case 2: 
{
signed short v101;
signed int v102;
v101 = v98 + v97;
v102 = v95 - 1;
v9 (v101, v102);
}
break;
case 4: 
{
signed int v103;
v103 = v27 ();
history[history_index++] = (int)v103;
}
break;
case 6: 
{
signed int v104;
v104 = v27 ();
history[history_index++] = (int)v104;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
