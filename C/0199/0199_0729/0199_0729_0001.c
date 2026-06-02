#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, signed char, signed short);
extern unsigned int (*v2) (signed int, signed short, signed char, signed short);
extern signed int v3 (signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (signed char, signed char, signed int, unsigned short);
extern void (*v8) (signed char, signed char, signed int, unsigned short);
extern unsigned char v9 (signed int, unsigned short, unsigned char);
extern unsigned char (*v10) (signed int, unsigned short, unsigned char);
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
unsigned char v13 (unsigned int, unsigned int, signed short, signed int);
unsigned char (*v14) (unsigned int, unsigned int, signed short, signed int) = v13;
extern void v15 (signed char, unsigned short, unsigned int);
extern void (*v16) (signed char, unsigned short, unsigned int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned int v19 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v20) (signed short, signed char, unsigned int, unsigned int);
signed short v21 (unsigned short, unsigned char, signed char);
signed short (*v22) (unsigned short, unsigned char, signed char) = v21;
extern signed char v23 (unsigned char, signed char, signed char);
extern signed char (*v24) (unsigned char, signed char, signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned short, unsigned int, signed int);
extern signed int (*v28) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = -1;
signed short v86 = -1;
signed char v85 = -1;

signed short v21 (unsigned short v88, unsigned char v89, signed char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
signed int v92 = 3;
signed char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v94, unsigned int v95, signed short v96, signed int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 3;
signed short v99 = -2;
unsigned short v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = 2;
unsigned short v103 = 7;
signed int v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
