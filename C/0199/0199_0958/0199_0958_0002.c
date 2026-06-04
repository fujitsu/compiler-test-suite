#include <stdlib.h>
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
void v17 (signed char, signed char, signed char);
void (*v18) (signed char, signed char, signed char) = v17;
static unsigned short v19 (unsigned short);
static unsigned short (*v20) (unsigned short) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed int v27 (signed short, unsigned int);
extern signed int (*v28) (signed short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v85 = 7;
signed char v84 = 3;
unsigned int v83 = 3U;

static unsigned short v19 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 7U;
signed short v88 = -4;
unsigned int v87 = 3U;
trace++;
switch (trace)
{
case 10: 
return v86;
default: abort ();
}
}
}
}

void v17 (signed char v90, signed char v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
signed short v94 = -4;
signed char v93 = -2;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
default: abort ();
}
}
}
}

void v13 (unsigned int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 7;
signed int v98 = -1;
unsigned short v97 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v100;
unsigned short v101;
v100 = v97 + 4;
v101 = v19 (v100);
history[history_index++] = (int)v101;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
