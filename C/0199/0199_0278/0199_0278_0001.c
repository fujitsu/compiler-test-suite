#include <stdlib.h>
extern signed int v1 (signed short, signed char);
extern signed int (*v2) (signed short, signed char);
extern unsigned char v3 (unsigned int, signed short);
extern unsigned char (*v4) (unsigned int, signed short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed short);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed short);
extern signed short v7 (unsigned int, unsigned short, unsigned short);
extern signed short (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern void v13 (signed short, unsigned char, unsigned char);
extern void (*v14) (signed short, unsigned char, unsigned char);
signed int v15 (signed int, unsigned short, signed short);
signed int (*v16) (signed int, unsigned short, signed short) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = 1;
signed int v47 = 1;
signed char v46 = 3;

signed int v15 (signed int v49, unsigned short v50, signed short v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 5;
signed int v53 = 1;
signed short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v57 = 0;
signed char v56 = -4;
unsigned short v55 = 0;
trace++;
switch (trace)
{
case 3: 
{
v9 ();
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}
