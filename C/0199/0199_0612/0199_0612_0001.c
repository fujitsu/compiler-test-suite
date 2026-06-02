#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
signed char v5 (signed char, unsigned short, unsigned char);
signed char (*v6) (signed char, unsigned short, unsigned char) = v5;
extern signed int v7 (signed short, unsigned short, signed short);
extern signed int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char, signed char, signed short);
extern unsigned int (*v14) (unsigned char, signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int, signed short);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
unsigned int v25 (signed short, signed char);
unsigned int (*v26) (signed short, signed char) = v25;
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = 0;
unsigned int v67 = 1U;
unsigned int v66 = 6U;

unsigned int v25 (signed short v69, signed char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 5U;
signed char v72 = -4;
signed int v71 = 2;
trace++;
switch (trace)
{
case 10: 
return 0U;
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed short v76 = 3;
unsigned int v75 = 4U;
signed char v74 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -3;
unsigned char v79 = 2;
signed int v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v81, unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 6U;
signed short v85 = -3;
signed char v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
