#include <stdlib.h>
unsigned int v3 (signed int, signed char);
unsigned int (*v4) (signed int, signed char) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
static unsigned short v7 (signed char, unsigned char, signed short);
static unsigned short (*v8) (signed char, unsigned char, signed short) = v7;
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (unsigned short, signed int, signed int);
extern unsigned char (*v12) (unsigned short, signed int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed short v27 (unsigned int, signed char);
extern signed short (*v28) (unsigned int, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v72 = 1;
unsigned int v71 = 2U;
unsigned char v70 = 2;

signed char v17 (unsigned char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 0;
signed int v75 = -4;
unsigned int v74 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (signed char v77, unsigned char v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 3;
unsigned short v81 = 0;
signed int v80 = -4;
trace++;
switch (trace)
{
case 8: 
return 7;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v85 = 1;
signed int v84 = 3;
signed short v83 = -4;
trace++;
switch (trace)
{
case 7: 
{
signed char v86;
unsigned char v87;
signed short v88;
unsigned short v89;
v86 = -3 + 3;
v87 = 5 - 6;
v88 = -1 + v83;
v89 = v7 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 9: 
{
unsigned int v90;
signed char v91;
signed short v92;
v90 = 2U - 5U;
v91 = 3 - 3;
v92 = v27 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 7;
signed char v96 = 2;
unsigned char v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
