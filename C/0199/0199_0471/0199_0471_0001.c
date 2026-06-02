#include <stdlib.h>
extern unsigned short v3 (signed short, unsigned short);
extern unsigned short (*v4) (signed short, unsigned short);
extern unsigned int v5 (unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, unsigned char, signed int);
signed char v9 (signed int, unsigned char, signed char);
signed char (*v10) (signed int, unsigned char, signed char) = v9;
extern signed int v11 (unsigned short, signed char, signed int, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int, signed int);
unsigned short v13 (signed char, unsigned int);
unsigned short (*v14) (signed char, unsigned int) = v13;
extern void v15 (unsigned short, signed int, signed short);
extern void (*v16) (unsigned short, signed int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v23 (unsigned int, signed int, unsigned int, unsigned short);
extern void (*v24) (unsigned int, signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 5;
unsigned short v87 = 7;
unsigned int v86 = 0U;

unsigned short v13 (signed char v89, unsigned int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 5;
signed int v92 = -4;
signed short v91 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed int v94, unsigned char v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 2;
unsigned int v98 = 7U;
unsigned short v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
