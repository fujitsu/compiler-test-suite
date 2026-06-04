#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned short, signed char);
extern signed short (*v2) (signed char, signed short, unsigned short, signed char);
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
extern unsigned char v5 (signed int, signed char);
extern unsigned char (*v6) (signed int, signed char);
extern void v7 (signed int, unsigned int, unsigned int);
extern void (*v8) (signed int, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed short v15 (unsigned char, unsigned short, unsigned int);
signed short (*v16) (unsigned char, unsigned short, unsigned int) = v15;
extern unsigned int v17 (unsigned char, signed int, signed int);
extern unsigned int (*v18) (unsigned char, signed int, signed int);
extern void v19 (unsigned char, signed char, signed char, unsigned int);
extern void (*v20) (unsigned char, signed char, signed char, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, unsigned short, signed int, signed short);
extern unsigned int (*v24) (signed char, unsigned short, signed int, signed short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v74 = 0U;
signed int v73 = 3;
unsigned char v72 = 4;

signed short v15 (unsigned char v75, unsigned short v76, unsigned int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 6;
signed char v79 = -1;
signed short v78 = -4;
trace++;
switch (trace)
{
case 1: 
return v78;
case 3: 
return 1;
default: abort ();
}
}
}
}

signed int v3 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 4;
signed int v83 = 3;
signed short v82 = -2;
trace++;
switch (trace)
{
case 5: 
return v83;
default: abort ();
}
}
}
}
