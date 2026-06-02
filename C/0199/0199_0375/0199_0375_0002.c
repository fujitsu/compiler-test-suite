#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, signed short, unsigned char, unsigned short);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern signed int v5 (signed short, unsigned short);
extern signed int (*v6) (signed short, unsigned short);
extern signed char v7 (unsigned char, signed short);
extern signed char (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed int v23 (signed char, unsigned int, unsigned short);
extern signed int (*v24) (signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
unsigned char v27 (signed short, unsigned char, signed char);
unsigned char (*v28) (signed short, unsigned char, signed char) = v27;
extern signed char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = 3;
unsigned char v75 = 5;
signed int v74 = 3;

unsigned char v27 (signed short v77, unsigned char v78, signed char v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 1;
signed int v81 = -3;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}
