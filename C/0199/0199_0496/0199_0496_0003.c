#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short);
extern signed short (*v2) (unsigned int, unsigned short);
signed int v3 (signed short, signed char);
signed int (*v4) (signed short, signed char) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned char, unsigned char, signed int);
extern void (*v8) (unsigned char, unsigned char, signed int);
extern signed int v9 (signed int, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
signed int v21 (signed char, unsigned short, unsigned short, signed int);
signed int (*v22) (signed char, unsigned short, unsigned short, signed int) = v21;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (unsigned char, unsigned short, signed int);
extern signed short (*v28) (unsigned char, unsigned short, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 5;
signed short v80 = -4;
signed int v79 = -3;

signed int v21 (signed char v82, unsigned short v83, unsigned short v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 5;
signed int v87 = 3;
unsigned char v86 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v89, unsigned short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 2;
signed short v92 = -3;
unsigned int v91 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -2;
signed int v97 = 1;
signed char v96 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
