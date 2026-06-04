#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int);
extern signed int (*v2) (unsigned char, unsigned short, signed int);
extern unsigned short v3 (unsigned int, signed short, signed char);
extern unsigned short (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (signed int, signed int, signed short);
extern unsigned short (*v6) (signed int, signed int, signed short);
extern signed short v7 (signed char, unsigned char, unsigned short);
extern signed short (*v8) (signed char, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v11 (signed short, unsigned short, signed char, unsigned int);
extern signed short (*v12) (signed short, unsigned short, signed char, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern signed int v17 (signed char, unsigned int, unsigned int);
extern signed int (*v18) (signed char, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern unsigned short v21 (signed short, unsigned char, unsigned char, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char, signed short);
signed char v23 (signed char);
signed char (*v24) (signed char) = v23;
extern unsigned char v25 (signed short, unsigned char, unsigned short, signed int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v105 = 1;
unsigned char v104 = 5;
unsigned char v103 = 6;

signed char v23 (signed char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 0;
signed short v108 = -3;
signed char v107 = -4;
trace++;
switch (trace)
{
case 11: 
return v106;
default: abort ();
}
}
}
}
