#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern signed int v3 (signed int, unsigned char, signed int, signed short);
extern signed int (*v4) (signed int, unsigned char, signed int, signed short);
unsigned int v5 (unsigned short, unsigned int);
unsigned int (*v6) (unsigned short, unsigned int) = v5;
extern signed int v7 (unsigned short, unsigned short, signed int, signed char);
extern signed int (*v8) (unsigned short, unsigned short, signed int, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed int v13 (signed short);
signed int (*v14) (signed short) = v13;
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
extern unsigned int v17 (signed char, unsigned short, signed short);
extern unsigned int (*v18) (signed char, unsigned short, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned int v23 (signed int, unsigned int, unsigned short);
unsigned int (*v24) (signed int, unsigned int, unsigned short) = v23;
extern signed short v25 (signed char, signed short, unsigned int);
extern signed short (*v26) (signed char, signed short, unsigned int);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern unsigned short v29 (signed short, signed char, unsigned char);
extern unsigned short (*v30) (signed short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = 1;
unsigned short v86 = 4;
signed char v85 = 2;

unsigned int v23 (signed int v88, unsigned int v89, unsigned short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 4;
unsigned char v92 = 7;
signed int v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 5U;
signed char v96 = -2;
signed int v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 6U;
signed char v101 = 3;
unsigned int v100 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
