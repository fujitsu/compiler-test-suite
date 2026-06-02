#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed short, unsigned short, unsigned char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
unsigned int v13 (signed int, unsigned int);
unsigned int (*v14) (signed int, unsigned int) = v13;
signed int v15 (signed char, signed short);
signed int (*v16) (signed char, signed short) = v15;
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (unsigned char, unsigned int);
extern unsigned char (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
signed short v23 (signed int, unsigned int, signed int, signed char);
signed short (*v24) (signed int, unsigned int, signed int, signed char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v74 = 1U;
unsigned char v73 = 1;
unsigned int v72 = 5U;

signed short v23 (signed int v75, unsigned int v76, signed int v77, signed char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 4;
unsigned char v80 = 2;
unsigned short v79 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v82, signed short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 0U;
signed char v85 = -2;
unsigned int v84 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v87, unsigned int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 1;
signed char v90 = 0;
unsigned char v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
