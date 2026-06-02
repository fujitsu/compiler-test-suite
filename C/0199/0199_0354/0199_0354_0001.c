#include <stdlib.h>
extern signed int v3 (unsigned int, signed int);
extern signed int (*v4) (unsigned int, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed short v19 (signed char, unsigned char);
extern signed short (*v20) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned char, signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern void v25 (signed char, signed char, unsigned short);
extern void (*v26) (signed char, signed char, unsigned short);
unsigned char v27 (signed char, unsigned int);
unsigned char (*v28) (signed char, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = 1;
signed int v68 = -1;
signed short v67 = 3;

unsigned char v27 (signed char v70, unsigned int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 0;
unsigned short v73 = 1;
unsigned short v72 = 7;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v77 = -4;
signed int v76 = -3;
unsigned char v75 = 2;
trace++;
switch (trace)
{
case 3: 
return v76;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned int v80 = 1U;
signed int v79 = 1;
unsigned int v78 = 6U;
trace++;
switch (trace)
{
case 5: 
return -1;
default: abort ();
}
}
}
}
