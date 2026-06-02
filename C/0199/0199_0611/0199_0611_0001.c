#include <stdlib.h>
extern signed int v1 (signed short, signed short, unsigned char, signed int);
extern signed int (*v2) (signed short, signed short, unsigned char, signed int);
extern unsigned int v3 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned char v5 (unsigned short, unsigned int, signed short, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, signed short, unsigned int);
extern signed char v7 (unsigned short, signed int, signed char);
extern signed char (*v8) (unsigned short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (unsigned int, unsigned int);
extern unsigned int (*v12) (unsigned int, unsigned int);
extern unsigned char v13 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char, unsigned int);
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
extern signed int v19 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v20) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
unsigned int v25 (unsigned char, signed int, unsigned short, signed short);
unsigned int (*v26) (unsigned char, signed int, unsigned short, signed short) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v89 = 2;
signed char v88 = 3;
unsigned int v87 = 2U;

unsigned int v25 (unsigned char v90, signed int v91, unsigned short v92, signed short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 1;
unsigned char v95 = 1;
signed int v94 = -1;
trace++;
switch (trace)
{
case 3: 
return 2U;
case 5: 
return 7U;
case 7: 
return 0U;
case 9: 
return 3U;
case 11: 
return 2U;
default: abort ();
}
}
}
}
