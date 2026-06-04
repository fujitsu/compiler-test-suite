#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (signed short, signed short, unsigned short);
extern signed int (*v4) (signed short, signed short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v9 (unsigned char, signed char, signed int);
extern unsigned char (*v10) (unsigned char, signed char, signed int);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
unsigned int v13 (unsigned short, unsigned int);
unsigned int (*v14) (unsigned short, unsigned int) = v13;
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed int v23 (signed char, unsigned int, unsigned char, signed int);
extern signed int (*v24) (signed char, unsigned int, unsigned char, signed int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed int v27 (signed short, signed int, unsigned int);
extern signed int (*v28) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 2U;
unsigned short v61 = 5;
unsigned int v60 = 2U;

unsigned int v25 (void)
{
{
for (;;) {
signed short v65 = 0;
unsigned char v64 = 6;
unsigned int v63 = 7U;
trace++;
switch (trace)
{
case 6: 
return 2U;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned int v68 = 6U;
signed int v67 = 3;
signed short v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v69, unsigned int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 7;
signed int v72 = 3;
unsigned char v71 = 4;
trace++;
switch (trace)
{
case 10: 
return 3U;
default: abort ();
}
}
}
}
