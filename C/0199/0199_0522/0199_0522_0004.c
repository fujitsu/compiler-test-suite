#include <stdlib.h>
extern signed int v3 (unsigned int, signed int, unsigned short);
extern signed int (*v4) (unsigned int, signed int, unsigned short);
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (signed short, signed char, unsigned char);
extern unsigned int (*v8) (signed short, signed char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (unsigned short, signed char, unsigned char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned char, unsigned short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed int v15 (unsigned short, signed short, signed char);
extern signed int (*v16) (unsigned short, signed short, signed char);
extern signed char v19 (unsigned short, unsigned int);
extern signed char (*v20) (unsigned short, unsigned int);
signed short v21 (unsigned short, unsigned char);
signed short (*v22) (unsigned short, unsigned char) = v21;
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern void v25 (unsigned char, unsigned short, unsigned short, signed char);
extern void (*v26) (unsigned char, unsigned short, unsigned short, signed char);
extern void v27 (signed short, signed char, signed char, signed int);
extern void (*v28) (signed short, signed char, signed char, signed int);
extern unsigned int v29 (unsigned short, signed char, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v150 = 0;
signed short v149 = 1;
signed int v148 = 0;

signed short v21 (unsigned short v151, unsigned char v152)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed int v155 = -2;
signed short v154 = -1;
signed short v153 = -2;
trace++;
switch (trace)
{
case 2: 
return 3;
case 5: 
return v154;
case 7: 
return v153;
case 9: 
return -3;
case 11: 
return -1;
default: abort ();
}
}
}
}
