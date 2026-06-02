#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern unsigned short v3 (signed char, signed char, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed char, signed int, unsigned short);
extern signed int v7 (unsigned int, signed char, unsigned int);
extern signed int (*v8) (unsigned int, signed char, unsigned int);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (signed char, signed int, unsigned char, signed short);
extern unsigned short (*v20) (signed char, signed int, unsigned char, signed short);
extern unsigned short v23 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned char, unsigned char, unsigned char);
extern signed short v27 (unsigned int, signed char, unsigned int);
extern signed short (*v28) (unsigned int, signed char, unsigned int);
extern signed short v29 (signed short, signed short, signed char, signed short);
extern signed short (*v30) (signed short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 0;
unsigned short v108 = 6;
signed char v107 = 1;

signed short v15 (unsigned int v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 0;
signed short v112 = -2;
unsigned int v111 = 3U;
trace++;
switch (trace)
{
case 10: 
return v113;
default: abort ();
}
}
}
}
