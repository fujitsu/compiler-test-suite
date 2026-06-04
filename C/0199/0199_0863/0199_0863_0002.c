#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (signed int, unsigned int, unsigned int, unsigned char);
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed int v9 (unsigned short, signed int, signed short, unsigned char);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned char);
signed short v11 (signed int);
signed short (*v12) (signed int) = v11;
extern void v13 (signed int, signed int);
extern void (*v14) (signed int, signed int);
extern signed short v15 (unsigned short, unsigned short);
extern signed short (*v16) (unsigned short, unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (unsigned short, unsigned short, unsigned short, unsigned char);
signed int (*v22) (unsigned short, unsigned short, unsigned short, unsigned char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (unsigned short, unsigned short, signed short);
extern void (*v26) (unsigned short, unsigned short, signed short);
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v87 = 6;
signed char v86 = 1;
signed short v85 = 1;

signed int v21 (unsigned short v88, unsigned short v89, unsigned short v90, unsigned char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -1;
unsigned short v93 = 0;
unsigned short v92 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 0;
signed char v97 = -2;
signed char v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned short v101 = 1;
signed int v100 = -4;
signed short v99 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
