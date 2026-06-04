#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern signed int v5 (signed short, signed int, unsigned short);
extern signed int (*v6) (signed short, signed int, unsigned short);
extern signed char v7 (signed char, unsigned int);
extern signed char (*v8) (signed char, unsigned int);
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
signed char v17 (unsigned short, unsigned char);
signed char (*v18) (unsigned short, unsigned char) = v17;
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned char v23 (unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = 2;
signed short v74 = -2;
signed int v73 = -1;

signed char v17 (unsigned short v76, unsigned char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 4;
signed int v79 = -4;
unsigned short v78 = 2;
trace++;
switch (trace)
{
case 4: 
return -2;
default: abort ();
}
}
}
}
