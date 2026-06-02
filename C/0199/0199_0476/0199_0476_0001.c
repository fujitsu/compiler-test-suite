#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed char);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed char, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned char v23 (signed int, signed char, signed char);
extern unsigned char (*v24) (signed int, signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (signed short, unsigned char, unsigned char, signed int);
unsigned int (*v28) (signed short, unsigned char, unsigned char, signed int) = v27;
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 0U;
signed char v55 = -2;
signed short v54 = -2;

unsigned int v27 (signed short v57, unsigned char v58, unsigned char v59, signed int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 1;
signed char v62 = 3;
signed char v61 = -3;
trace++;
switch (trace)
{
case 5: 
return 7U;
default: abort ();
}
}
}
}
