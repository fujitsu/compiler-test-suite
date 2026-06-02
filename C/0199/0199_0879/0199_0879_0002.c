#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, unsigned int);
extern signed short (*v2) (signed char, unsigned short, signed short, unsigned int);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
signed char v9 (unsigned int, unsigned int);
signed char (*v10) (unsigned int, unsigned int) = v9;
extern signed int v11 (unsigned char, signed char, unsigned char);
extern signed int (*v12) (unsigned char, signed char, unsigned char);
extern signed char v13 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v14) (signed short, unsigned short, signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed int v27 (signed int, signed int, unsigned char, signed int);
extern signed int (*v28) (signed int, signed int, unsigned char, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 5U;
unsigned int v61 = 0U;
signed int v60 = 1;

signed short v25 (void)
{
{
for (;;) {
signed short v65 = -4;
unsigned char v64 = 7;
unsigned int v63 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 6;
unsigned char v68 = 5;
unsigned short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v70, unsigned int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -2;
unsigned short v73 = 0;
signed short v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 1;
unsigned int v77 = 4U;
signed char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
