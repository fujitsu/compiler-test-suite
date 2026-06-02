#include <stdlib.h>
unsigned int v1 (unsigned int);
unsigned int (*v2) (unsigned int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
static unsigned short v5 (void);
static unsigned short (*v6) (void) = v5;
extern unsigned char v7 (signed short, signed short, unsigned short, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern signed short v17 (unsigned int, signed char, unsigned short, signed short);
extern signed short (*v18) (unsigned int, signed char, unsigned short, signed short);
extern unsigned int v19 (unsigned int, unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned char v21 (signed short, unsigned short);
extern unsigned char (*v22) (signed short, unsigned short);
extern signed char v23 (unsigned int, unsigned short);
extern signed char (*v24) (unsigned int, unsigned short);
unsigned char v25 (signed int);
unsigned char (*v26) (signed int) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -2;
unsigned char v74 = 5;
unsigned int v73 = 5U;

unsigned char v25 (signed int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 0U;
signed short v78 = 2;
signed char v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v5 (void)
{
{
for (;;) {
unsigned short v82 = 6;
signed char v81 = 0;
unsigned short v80 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v83;
unsigned short v84;
unsigned char v85;
v83 = -2 + 0;
v84 = v80 + v80;
v85 = v21 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 3: 
{
signed char v86;
v86 = v27 ();
history[history_index++] = (int)v86;
}
break;
case 5: 
{
signed short v87;
unsigned short v88;
unsigned char v89;
v87 = -3 + 1;
v88 = v80 + v80;
v89 = v21 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 11: 
return v82;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 4U;
unsigned int v92 = 2U;
signed int v91 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v94;
v94 = v5 ();
history[history_index++] = (int)v94;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}
