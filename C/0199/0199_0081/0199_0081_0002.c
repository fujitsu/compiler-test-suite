#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned char, signed int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned char, signed int, unsigned int, unsigned char);
extern void v5 (signed short, signed int, signed char);
extern void (*v6) (signed short, signed int, signed char);
extern signed int v7 (signed int, unsigned char, signed int, signed char);
extern signed int (*v8) (signed int, unsigned char, signed int, signed char);
extern signed short v9 (unsigned short, signed short, unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, signed short, unsigned short, unsigned short);
extern void v11 (unsigned short, signed char);
extern void (*v12) (unsigned short, signed char);
extern signed short v13 (signed int, signed int, signed short);
extern signed short (*v14) (signed int, signed int, signed short);
extern void v15 (signed short, signed short);
extern void (*v16) (signed short, signed short);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (unsigned int, signed char, signed int, signed short);
signed int (*v22) (unsigned int, signed char, signed int, signed short) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern signed short v29 (signed int, unsigned short, unsigned short);
extern signed short (*v30) (signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v72 = 3;
unsigned char v71 = 4;
signed int v70 = -2;

unsigned int v25 (void)
{
{
for (;;) {
unsigned int v75 = 2U;
unsigned char v74 = 4;
signed int v73 = 1;
trace++;
switch (trace)
{
case 1: 
return 7U;
case 3: 
return v75;
case 11: 
return 2U;
default: abort ();
}
}
}
}

signed int v21 (unsigned int v76, signed char v77, signed int v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 3;
signed short v81 = -3;
signed short v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
