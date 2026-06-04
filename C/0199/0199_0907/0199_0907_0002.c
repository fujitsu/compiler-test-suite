#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed char v7 (unsigned char, signed int);
signed char (*v8) (unsigned char, signed int) = v7;
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, unsigned short);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned char v29 (signed short, signed int, unsigned short, unsigned short);
extern unsigned char (*v30) (signed short, signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = 3;
signed int v62 = -3;
unsigned int v61 = 3U;

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v66 = 3;
signed int v65 = -4;
signed char v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed char v69 = 0;
signed char v68 = -4;
signed short v67 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v70, signed int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -4;
unsigned int v73 = 1U;
signed int v72 = 1;
trace++;
switch (trace)
{
case 7: 
return -4;
default: abort ();
}
}
}
}
