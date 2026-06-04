#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed int, unsigned int, signed int);
extern void (*v28) (unsigned short, signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = 3;
signed short v108 = 1;
signed short v107 = -1;

signed int v3 (void)
{
{
for (;;) {
unsigned int v112 = 5U;
unsigned char v111 = 4;
unsigned int v110 = 5U;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}
