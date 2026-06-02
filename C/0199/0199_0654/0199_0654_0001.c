#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
void v3 (unsigned int, signed int);
void (*v4) (unsigned int, signed int) = v3;
unsigned short v5 (signed short, signed short);
unsigned short (*v6) (signed short, signed short) = v5;
extern signed short v7 (unsigned short, unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned int, signed char, signed int);
signed int v9 (signed int, signed char, signed char, signed char);
signed int (*v10) (signed int, signed char, signed char, signed char) = v9;
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v23 (signed int, signed int, signed char);
extern signed char (*v24) (signed int, signed int, signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (signed char, unsigned char, signed short);
extern unsigned char (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v76 = 5;
unsigned int v75 = 1U;
signed short v74 = -3;

signed int v9 (signed int v77, signed char v78, signed char v79, signed char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -1;
signed int v82 = 3;
unsigned short v81 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v84, signed short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -1;
unsigned short v87 = 1;
signed short v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v89, signed int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 1;
unsigned short v92 = 2;
unsigned short v91 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
