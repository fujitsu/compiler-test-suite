#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned char, unsigned char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed char, signed char);
extern unsigned short (*v20) (signed char, signed char);
extern signed short v21 (unsigned char, signed short, unsigned short);
extern signed short (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, signed int, signed char, unsigned int);
extern unsigned short (*v24) (signed short, signed int, signed char, unsigned int);
extern unsigned int v25 (unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, signed int, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed int v29 (unsigned short, signed int, unsigned char, signed short);
signed int (*v30) (unsigned short, signed int, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v147 = 0;
signed char v146 = -1;
unsigned char v145 = 3;

signed int v29 (unsigned short v148, signed int v149, unsigned char v150, signed short v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed int v154 = 0;
unsigned short v153 = 0;
unsigned char v152 = 0;
trace++;
switch (trace)
{
case 3: 
return v154;
case 5: 
return -1;
case 7: 
return v149;
case 9: 
return v149;
case 11: 
return v154;
default: abort ();
}
}
}
}
