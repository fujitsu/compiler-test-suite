#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
unsigned char v3 (unsigned char, unsigned char, signed int, signed short);
unsigned char (*v4) (unsigned char, unsigned char, signed int, signed short) = v3;
signed char v5 (unsigned short, signed int, signed int);
signed char (*v6) (unsigned short, signed int, signed int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern void v19 (signed char, signed char);
extern void (*v20) (signed char, signed char);
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
extern unsigned short v25 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v26) (unsigned short, signed short, signed int, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned int v29 (unsigned short, signed char, unsigned short, unsigned short);
unsigned int (*v30) (unsigned short, signed char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 5;
unsigned short v71 = 0;
unsigned char v70 = 5;

unsigned int v29 (unsigned short v73, signed char v74, unsigned short v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 2;
signed char v78 = 1;
signed int v77 = -4;
trace++;
switch (trace)
{
case 2: 
return 2U;
case 4: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed char v82 = 1;
signed int v81 = -3;
unsigned char v80 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v83, signed int v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 2;
unsigned short v87 = 0;
unsigned char v86 = 5;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v89, unsigned char v90, signed int v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 7U;
unsigned char v94 = 7;
unsigned int v93 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
