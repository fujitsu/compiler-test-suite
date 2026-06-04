#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned int v3 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v4) (unsigned short, signed int, unsigned short, signed short);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed char v9 (signed int, unsigned char);
extern signed char (*v10) (signed int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
unsigned char v19 (unsigned short, unsigned int);
unsigned char (*v20) (unsigned short, unsigned int) = v19;
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned short, unsigned short);
extern void v29 (unsigned char, signed int, unsigned char, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v65 = -3;
signed int v64 = -3;
unsigned char v63 = 0;

unsigned char v19 (unsigned short v66, unsigned int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -1;
unsigned short v69 = 2;
signed short v68 = -2;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

signed char v17 (unsigned char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 2;
signed char v73 = -2;
unsigned char v72 = 1;
trace++;
switch (trace)
{
case 1: 
return v73;
case 6: 
return 0;
default: abort ();
}
}
}
}
