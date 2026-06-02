#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed int, signed short, signed short, unsigned int);
extern void (*v4) (signed int, signed short, signed short, unsigned int);
extern signed int v5 (signed char, signed int, unsigned short);
extern signed int (*v6) (signed char, signed int, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
unsigned short v9 (signed int, signed short, signed char, unsigned char);
unsigned short (*v10) (signed int, signed short, signed char, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
extern signed int v21 (unsigned short, signed int, signed int);
extern signed int (*v22) (unsigned short, signed int, signed int);
extern unsigned int v23 (signed char, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed int);
void v25 (signed char, unsigned short, unsigned char);
void (*v26) (signed char, unsigned short, unsigned char) = v25;
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern void v29 (unsigned char, signed int, signed int);
extern void (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v80 = 3;
unsigned char v79 = 7;
signed short v78 = -1;

void v25 (signed char v81, unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -1;
signed short v85 = 1;
unsigned int v84 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 5;
signed int v89 = -2;
unsigned char v88 = 0;
trace++;
switch (trace)
{
case 1: 
return v89;
case 10: 
return v89;
default: abort ();
}
}
}
}

unsigned short v9 (signed int v91, signed short v92, signed char v93, unsigned char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 4;
signed short v96 = 1;
unsigned short v95 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
