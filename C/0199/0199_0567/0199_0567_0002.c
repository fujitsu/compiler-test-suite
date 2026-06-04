#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned int v3 (signed int, signed int, signed short);
extern unsigned int (*v4) (signed int, signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned short, unsigned short);
extern signed char v7 (signed int, signed short, unsigned int, signed char);
extern signed char (*v8) (signed int, signed short, unsigned int, signed char);
extern signed char v9 (unsigned short, signed short, unsigned short, signed int);
extern signed char (*v10) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v11 (unsigned short, signed short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, signed short, unsigned int, signed char);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
unsigned int v19 (signed short, unsigned int, unsigned int, signed char);
unsigned int (*v20) (signed short, unsigned int, unsigned int, signed char) = v19;
extern signed short v21 (unsigned short, unsigned short, signed char);
extern signed short (*v22) (unsigned short, unsigned short, signed char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
static signed int v29 (void);
static signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = -2;
unsigned int v75 = 5U;
unsigned short v74 = 1;

static signed int v29 (void)
{
{
for (;;) {
signed char v79 = 0;
signed short v78 = -4;
unsigned short v77 = 1;
trace++;
switch (trace)
{
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v82 = 2;
signed int v81 = 3;
signed int v80 = 0;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v83, unsigned int v84, unsigned int v85, signed char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 2;
unsigned int v88 = 1U;
signed int v87 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed int v90;
v90 = v29 ();
history[history_index++] = (int)v90;
}
break;
case 9: 
{
unsigned short v91;
signed short v92;
unsigned short v93;
signed int v94;
signed char v95;
v91 = 5 - 2;
v92 = v83 - v83;
v93 = 5 - 2;
v94 = v87 + 0;
v95 = v9 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}
