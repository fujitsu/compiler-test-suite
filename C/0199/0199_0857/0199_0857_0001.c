#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (signed short, unsigned char, signed char);
extern unsigned int (*v4) (signed short, unsigned char, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned char, unsigned int, unsigned short, signed char);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned int v11 (signed char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
signed char v23 (signed int, unsigned int);
signed char (*v24) (signed int, unsigned int) = v23;
extern signed char v25 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed short v27 (signed int, unsigned short, signed char, unsigned char);
extern signed short (*v28) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -3;
signed char v53 = -4;
unsigned short v52 = 7;

signed char v23 (signed int v55, unsigned int v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 2;
unsigned int v58 = 0U;
unsigned short v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed int v62 = 2;
signed int v61 = -1;
unsigned char v60 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed char v65 = -2;
unsigned short v64 = 3;
unsigned int v63 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed char v68 = -4;
signed short v67 = 3;
signed int v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
