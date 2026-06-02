#include <stdlib.h>
extern void v1 (unsigned char, signed int, unsigned short, signed short);
extern void (*v2) (unsigned char, signed int, unsigned short, signed short);
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
unsigned char v5 (unsigned char, signed int, unsigned char, unsigned char);
unsigned char (*v6) (unsigned char, signed int, unsigned char, unsigned char) = v5;
extern void v7 (signed short, signed short, unsigned char, unsigned short);
extern void (*v8) (signed short, signed short, unsigned char, unsigned short);
signed short v9 (signed char);
signed short (*v10) (signed char) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed int);
extern void (*v16) (unsigned char, signed int);
extern void v17 (unsigned char, unsigned int, unsigned int, signed char);
extern void (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned int v21 (unsigned char, signed char);
extern unsigned int (*v22) (unsigned char, signed char);
extern void v25 (unsigned short, unsigned short, signed int, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, signed short, signed int);
extern unsigned short (*v30) (signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = -4;
unsigned int v76 = 3U;
unsigned short v75 = 3;

signed short v9 (signed char v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -1;
signed short v80 = -3;
unsigned char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v82, signed int v83, unsigned char v84, unsigned char v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -2;
unsigned short v87 = 6;
signed char v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -3;
signed int v91 = 0;
unsigned char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
