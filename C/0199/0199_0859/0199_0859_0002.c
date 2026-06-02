#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed short v5 (unsigned char, unsigned char);
extern signed short (*v6) (unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned char, unsigned int);
extern signed char (*v8) (unsigned int, unsigned char, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
unsigned short v11 (unsigned short, signed char, unsigned short);
unsigned short (*v12) (unsigned short, signed char, unsigned short) = v11;
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (signed char, signed char);
extern void (*v16) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, signed char, unsigned short, signed int);
extern signed char (*v22) (signed short, signed char, unsigned short, signed int);
signed short v23 (unsigned char, unsigned short, unsigned short, signed short);
signed short (*v24) (unsigned char, unsigned short, unsigned short, signed short) = v23;
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -2;
signed char v74 = -1;
unsigned int v73 = 4U;

signed short v23 (unsigned char v76, unsigned short v77, unsigned short v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -2;
unsigned int v81 = 1U;
unsigned short v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v83, signed char v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -1;
signed int v87 = 3;
signed short v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
