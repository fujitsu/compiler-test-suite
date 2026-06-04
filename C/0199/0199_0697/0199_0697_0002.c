#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed short, unsigned char, unsigned char);
extern signed char v3 (unsigned char, signed short, unsigned char);
extern signed char (*v4) (unsigned char, signed short, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed int v9 (unsigned int, signed int, signed char, unsigned int);
signed int (*v10) (unsigned int, signed int, signed char, unsigned int) = v9;
extern unsigned char v11 (signed short, signed int, unsigned short);
extern unsigned char (*v12) (signed short, signed int, unsigned short);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern void v15 (signed short, unsigned int, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned char, unsigned char);
extern signed int v17 (unsigned int, signed short, unsigned char, unsigned char);
extern signed int (*v18) (unsigned int, signed short, unsigned char, unsigned char);
unsigned short v19 (unsigned int, unsigned short, signed char, signed short);
unsigned short (*v20) (unsigned int, unsigned short, signed char, signed short) = v19;
extern signed short v21 (unsigned short, signed char, unsigned int, signed char);
extern signed short (*v22) (unsigned short, signed char, unsigned int, signed char);
extern unsigned int v23 (signed int, unsigned short, unsigned char);
extern unsigned int (*v24) (signed int, unsigned short, unsigned char);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed int v27 (unsigned short, unsigned char, signed short, unsigned short);
extern signed int (*v28) (unsigned short, unsigned char, signed short, unsigned short);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v77 = 5;
unsigned short v76 = 4;
unsigned int v75 = 7U;

unsigned short v19 (unsigned int v78, unsigned short v79, signed char v80, signed short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 4;
signed int v83 = 0;
signed char v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 5;
unsigned short v87 = 1;
unsigned int v86 = 5U;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

signed int v9 (unsigned int v89, signed int v90, signed char v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -2;
unsigned int v94 = 1U;
unsigned char v93 = 6;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}
