#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed char);
extern signed short (*v4) (unsigned short, unsigned char, signed char);
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern unsigned char v7 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v8) (signed int, signed int, unsigned int, unsigned char);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
unsigned int v19 (signed int, signed int, unsigned short, unsigned char);
unsigned int (*v20) (signed int, signed int, unsigned short, unsigned char) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v84 = 3;
signed int v83 = -2;
unsigned short v82 = 6;

signed char v29 (signed char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 3;
unsigned short v87 = 5;
signed char v86 = -2;
trace++;
switch (trace)
{
case 8: 
return v88;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v89, signed int v90, unsigned short v91, unsigned char v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 1;
unsigned char v94 = 4;
unsigned int v93 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
