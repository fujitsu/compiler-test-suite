#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed short, unsigned char, signed short, signed short);
extern unsigned short (*v6) (signed short, unsigned char, signed short, signed short);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
signed short v13 (signed short);
signed short (*v14) (signed short) = v13;
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern void v19 (unsigned char, unsigned char, signed short);
extern void (*v20) (unsigned char, unsigned char, signed short);
extern unsigned short v21 (unsigned short, unsigned int, signed char);
extern unsigned short (*v22) (unsigned short, unsigned int, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned int v27 (signed short, signed int);
extern unsigned int (*v28) (signed short, signed int);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = -3;
signed int v75 = -1;
unsigned int v74 = 5U;

signed char v29 (unsigned short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 7U;
signed char v79 = 1;
signed char v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -2;
unsigned short v83 = 0;
unsigned short v82 = 7;
trace++;
switch (trace)
{
case 7: 
return v81;
case 11: 
return v81;
default: abort ();
}
}
}
}
