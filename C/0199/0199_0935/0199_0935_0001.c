#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v7 (unsigned short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, signed int);
extern void v9 (signed int, signed char, signed int, unsigned int);
extern void (*v10) (signed int, signed char, signed int, unsigned int);
extern signed int v11 (signed char, unsigned int, unsigned short);
extern signed int (*v12) (signed char, unsigned int, unsigned short);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed short v15 (signed short, unsigned int, signed short);
extern signed short (*v16) (signed short, unsigned int, signed short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (signed int, signed char, unsigned short, signed int);
extern signed short (*v24) (signed int, signed char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v29 (signed int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v50 = 0;
unsigned char v49 = 2;
signed short v48 = 2;

signed char v17 (void)
{
{
for (;;) {
signed char v53 = 1;
unsigned short v52 = 5;
signed int v51 = 3;
trace++;
switch (trace)
{
case 4: 
{
v21 ();
}
break;
case 6: 
{
v21 ();
}
break;
case 8: 
return 0;
default: abort ();
}
}
}
}
