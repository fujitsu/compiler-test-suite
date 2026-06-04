#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern unsigned int v5 (unsigned char, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed int, signed short, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (unsigned char, unsigned short);
extern void (*v14) (unsigned char, unsigned short);
extern void v15 (unsigned short, unsigned short);
extern void (*v16) (unsigned short, unsigned short);
unsigned short v17 (unsigned short, unsigned char, signed char, unsigned int);
unsigned short (*v18) (unsigned short, unsigned char, signed char, unsigned int) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
signed char v21 (signed int, unsigned char, unsigned char, signed short);
signed char (*v22) (signed int, unsigned char, unsigned char, signed short) = v21;
extern unsigned short v23 (unsigned char, unsigned short, signed short);
extern unsigned short (*v24) (unsigned char, unsigned short, signed short);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
unsigned short v29 (unsigned int, signed short);
unsigned short (*v30) (unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = -3;
unsigned short v75 = 7;
signed char v74 = 3;

unsigned short v29 (unsigned int v77, signed short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 7U;
signed char v80 = -1;
unsigned int v79 = 3U;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed char v21 (signed int v82, unsigned char v83, unsigned char v84, signed short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 4;
unsigned char v87 = 5;
signed int v86 = -2;
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

unsigned short v17 (unsigned short v89, unsigned char v90, signed char v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = -3;
signed char v94 = 1;
signed char v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned char v98 = 7;
signed char v97 = 1;
signed short v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
