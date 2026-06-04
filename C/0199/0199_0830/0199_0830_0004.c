#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
signed char v5 (signed int, unsigned int);
signed char (*v6) (signed int, unsigned int) = v5;
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern unsigned short v9 (unsigned short, signed int);
extern unsigned short (*v10) (unsigned short, signed int);
signed char v11 (unsigned int);
signed char (*v12) (unsigned int) = v11;
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed short (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern signed short v19 (signed int, signed char, unsigned short, signed char);
extern signed short (*v20) (signed int, signed char, unsigned short, signed char);
extern signed int v21 (unsigned int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int, signed char, unsigned int);
extern signed int v25 (unsigned char, signed char, signed short, signed char);
extern signed int (*v26) (unsigned char, signed char, signed short, signed char);
extern void v27 (unsigned int, unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v144 = -2;
signed char v143 = 0;
unsigned char v142 = 5;

signed char v11 (unsigned int v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
unsigned char v148 = 4;
unsigned int v147 = 4U;
unsigned short v146 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v149, unsigned int v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = -4;
unsigned short v152 = 7;
signed char v151 = -3;
trace++;
switch (trace)
{
case 9: 
return v151;
case 11: 
return -1;
default: abort ();
}
}
}
}
