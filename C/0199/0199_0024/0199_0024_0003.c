#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (signed int, signed short, signed int);
extern unsigned short (*v6) (signed int, signed short, signed int);
extern signed int v9 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v10) (unsigned char, unsigned char, signed int, signed short);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern void v17 (unsigned char, unsigned short, unsigned short, unsigned short);
extern void (*v18) (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned char v23 (unsigned short, signed int, signed short, unsigned short);
unsigned char (*v24) (unsigned short, signed int, signed short, unsigned short) = v23;
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed char v29 (unsigned char, signed short);
extern signed char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 2U;
unsigned short v88 = 6;
signed char v87 = 0;

signed short v27 (void)
{
{
for (;;) {
unsigned short v92 = 7;
unsigned char v91 = 0;
unsigned char v90 = 4;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
signed short v95 = 2;
signed char v94 = -2;
unsigned short v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v96, signed int v97, signed short v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 0;
signed char v101 = 2;
unsigned int v100 = 3U;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}
