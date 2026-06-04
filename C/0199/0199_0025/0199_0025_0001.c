#include <stdlib.h>
extern void v3 (signed char, signed int, signed short);
extern void (*v4) (signed char, signed int, signed short);
extern signed char v5 (unsigned short, signed char, unsigned char, signed char);
extern signed char (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern void v9 (signed int, signed short, unsigned char);
extern void (*v10) (signed int, signed short, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (unsigned short, unsigned char, unsigned int);
extern signed short (*v16) (unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed short);
extern unsigned char (*v18) (signed char, unsigned short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern signed char v23 (unsigned char, signed int, signed int);
extern signed char (*v24) (unsigned char, signed int, signed int);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
signed short v27 (unsigned short, unsigned int, signed int, unsigned int);
signed short (*v28) (unsigned short, unsigned int, signed int, unsigned int) = v27;
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = 2;
unsigned int v65 = 7U;
signed int v64 = 1;

signed short v27 (unsigned short v67, unsigned int v68, signed int v69, unsigned int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 1U;
unsigned int v72 = 6U;
unsigned int v71 = 0U;
trace++;
switch (trace)
{
case 5: 
return 3;
case 7: 
return -1;
case 9: 
return -1;
default: abort ();
}
}
}
}
