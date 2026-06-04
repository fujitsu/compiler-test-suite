#include <stdlib.h>
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern unsigned char v5 (signed int, unsigned short, signed char);
extern unsigned char (*v6) (signed int, unsigned short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned int v15 (signed int, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (unsigned char, signed char, signed short, signed char);
extern signed char (*v22) (unsigned char, signed char, signed short, signed char);
extern signed int v23 (signed short, unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned int, unsigned short);
signed int v25 (signed short);
signed int (*v26) (signed short) = v25;
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned char);
void v29 (signed short, signed char);
void (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v74 = -2;
unsigned char v73 = 3;
signed int v72 = 3;

void v29 (signed short v75, signed char v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = 1;
unsigned short v78 = 4;
unsigned short v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 3;
signed short v82 = -1;
unsigned char v81 = 6;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}
