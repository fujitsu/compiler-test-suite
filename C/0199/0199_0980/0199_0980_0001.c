#include <stdlib.h>
extern void v1 (unsigned short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed char, unsigned short);
extern signed char v3 (signed char, signed short, signed int);
extern signed char (*v4) (signed char, signed short, signed int);
void v5 (signed char, signed char);
void (*v6) (signed char, signed char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (signed short, signed short, unsigned int);
extern signed char (*v10) (signed short, signed short, unsigned int);
extern signed char v11 (signed char, unsigned int, signed short, unsigned int);
extern signed char (*v12) (signed char, unsigned int, signed short, unsigned int);
extern unsigned short v13 (unsigned char, signed int, signed int, unsigned short);
extern unsigned short (*v14) (unsigned char, signed int, signed int, unsigned short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (signed int, signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, signed int, unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
signed short v25 (unsigned short, unsigned short);
signed short (*v26) (unsigned short, unsigned short) = v25;
extern unsigned char v29 (unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -2;
signed char v52 = -3;
unsigned short v51 = 1;

signed short v25 (unsigned short v54, unsigned short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 1;
unsigned char v57 = 4;
unsigned int v56 = 0U;
trace++;
switch (trace)
{
case 2: 
return -1;
default: abort ();
}
}
}
}

void v5 (signed char v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 4;
unsigned short v62 = 7;
unsigned char v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
