#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned short v5 (signed char, signed int, unsigned char);
extern unsigned short (*v6) (signed char, signed int, unsigned char);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (signed int, unsigned short, unsigned int);
extern signed short (*v16) (signed int, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed short v29 (signed int, unsigned char, signed short, signed char);
extern signed short (*v30) (signed int, unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 7U;
unsigned int v49 = 7U;
signed char v48 = -2;

signed short v1 (void)
{
{
for (;;) {
signed char v53 = -1;
signed short v52 = -3;
signed char v51 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v54;
v54 = v3 ();
history[history_index++] = (int)v54;
}
break;
case 20: 
return v52;
default: abort ();
}
}
}
}
