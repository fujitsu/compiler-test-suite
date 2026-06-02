#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (unsigned char, signed char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed char, signed short, signed short);
extern signed short v9 (unsigned short, signed int, unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed int, unsigned short, signed short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern signed short v21 (signed char, unsigned short, unsigned int);
extern signed short (*v22) (signed char, unsigned short, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned short, signed short, unsigned int, signed short);
extern signed short (*v26) (unsigned short, signed short, unsigned int, signed short);
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 6U;
unsigned char v47 = 1;
unsigned short v46 = 0;

unsigned short v1 (void)
{
{
for (;;) {
signed int v51 = 2;
unsigned short v50 = 5;
unsigned int v49 = 3U;
trace++;
switch (trace)
{
case 0: 
{
v11 ();
}
break;
case 12: 
return v50;
default: abort ();
}
}
}
}
