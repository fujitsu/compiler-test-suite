#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (signed short, signed short, unsigned char, signed short);
extern unsigned short (*v4) (signed short, signed short, unsigned char, signed short);
extern unsigned short v5 (unsigned char, unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned int, unsigned short);
extern void v7 (unsigned short, unsigned short);
extern void (*v8) (unsigned short, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed short, signed char, unsigned int);
extern unsigned int (*v16) (unsigned int, signed short, signed char, unsigned int);
extern unsigned short v17 (signed char, signed char, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed int, signed char, signed int, unsigned short);
extern unsigned short v23 (signed short, signed int, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (unsigned char, signed int, unsigned short);
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
unsigned short v29 (signed int, unsigned char);
unsigned short (*v30) (signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v138 = 2;
signed short v137 = -4;
unsigned char v136 = 4;

unsigned short v29 (signed int v139, unsigned char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 1;
signed short v142 = 1;
signed char v141 = 1;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return 2;
case 6: 
return 4;
case 8: 
return 1;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned short v27 (unsigned int v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 1U;
signed int v146 = 0;
signed int v145 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
