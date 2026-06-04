#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed char v7 (unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, signed short);
extern unsigned short (*v10) (unsigned int, unsigned char, signed short);
unsigned char v11 (signed char);
unsigned char (*v12) (signed char) = v11;
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned short v19 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed short, unsigned char, unsigned short, unsigned short);
extern signed int v21 (signed short, unsigned int, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned int, unsigned char, signed int);
extern signed int v23 (signed int, unsigned char, signed short, signed int);
extern signed int (*v24) (signed int, unsigned char, signed short, signed int);
extern unsigned char v25 (signed short, signed short, signed int);
extern unsigned char (*v26) (signed short, signed short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v54 = -2;
unsigned int v53 = 0U;
unsigned int v52 = 2U;

unsigned short v29 (void)
{
{
for (;;) {
signed short v57 = 0;
unsigned char v56 = 7;
unsigned short v55 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 6;
unsigned short v60 = 1;
unsigned short v59 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed int v62;
v62 = 0 + -3;
v13 (v62);
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
