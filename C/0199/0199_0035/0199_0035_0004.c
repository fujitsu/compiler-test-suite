#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned char);
extern unsigned short (*v4) (unsigned char, signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed short v7 (signed int, signed int, signed short, unsigned short);
extern signed short (*v8) (signed int, signed int, signed short, unsigned short);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed char, unsigned short, unsigned short, unsigned int);
extern signed int (*v16) (signed char, unsigned short, unsigned short, unsigned int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
void v19 (unsigned int, signed int, signed int);
void (*v20) (unsigned int, signed int, signed int) = v19;
unsigned char v21 (signed int, unsigned short, signed char);
unsigned char (*v22) (signed int, unsigned short, signed char) = v21;
extern signed short v23 (unsigned int, signed char, unsigned short);
extern signed short (*v24) (unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned char);
extern void (*v26) (unsigned char, signed short, unsigned char);
extern unsigned char v27 (signed short, unsigned char, signed short);
extern unsigned char (*v28) (signed short, unsigned char, signed short);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v147 = 6U;
signed short v146 = 3;
unsigned int v145 = 6U;

unsigned char v21 (signed int v148, unsigned short v149, signed char v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 7;
unsigned int v152 = 4U;
unsigned char v151 = 6;
trace++;
switch (trace)
{
case 9: 
return v151;
case 11: 
return v151;
default: abort ();
}
}
}
}

void v19 (unsigned int v154, signed int v155, signed int v156)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned char v159 = 2;
signed char v158 = -3;
unsigned int v157 = 2U;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}
