#include <stdlib.h>
signed short v1 (unsigned int, signed short, signed short);
signed short (*v2) (unsigned int, signed short, signed short) = v1;
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned char);
extern void v9 (unsigned int, unsigned char);
extern void (*v10) (unsigned int, unsigned char);
extern unsigned short v11 (unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, signed short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
static unsigned char v17 (signed char);
static unsigned char (*v18) (signed char) = v17;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
unsigned char v23 (signed short, signed short);
unsigned char (*v24) (signed short, signed short) = v23;
extern void v25 (unsigned short, signed int);
extern void (*v26) (unsigned short, signed int);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -2;
signed char v74 = -1;
signed short v73 = 2;

unsigned char v23 (signed short v76, signed short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 5U;
unsigned char v79 = 7;
signed int v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v17 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 0;
unsigned char v83 = 4;
signed char v82 = 3;
trace++;
switch (trace)
{
case 9: 
return 5;
case 11: 
return v83;
default: abort ();
}
}
}
}

signed short v1 (unsigned int v85, signed short v86, signed short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 6;
unsigned char v89 = 1;
signed int v88 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v91;
v91 = v13 ();
history[history_index++] = (int)v91;
}
break;
case 8: 
{
signed char v92;
unsigned char v93;
v92 = 3 - 3;
v93 = v17 (v92);
history[history_index++] = (int)v93;
}
break;
case 10: 
{
signed char v94;
unsigned char v95;
v94 = 1 - -1;
v95 = v17 (v94);
history[history_index++] = (int)v95;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
