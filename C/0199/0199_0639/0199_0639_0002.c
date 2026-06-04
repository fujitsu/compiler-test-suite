#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed short, unsigned char, signed int);
extern unsigned short (*v4) (signed short, unsigned char, signed int);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
unsigned char v11 (unsigned short, signed short, signed char);
unsigned char (*v12) (unsigned short, signed short, signed char) = v11;
signed char v13 (unsigned short);
signed char (*v14) (unsigned short) = v13;
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v21 (signed short, unsigned int);
extern unsigned short (*v22) (signed short, unsigned int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (unsigned short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 5;
signed char v69 = -3;
unsigned int v68 = 2U;

signed char v13 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 1;
signed short v73 = -4;
signed char v72 = -3;
trace++;
switch (trace)
{
case 1: 
return v72;
case 3: 
return v74;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v75, signed short v76, signed char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 7U;
unsigned char v79 = 4;
unsigned int v78 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v83 = 7U;
signed int v82 = -1;
signed int v81 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
