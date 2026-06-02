#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
signed int v5 (signed int, unsigned short, unsigned char);
signed int (*v6) (signed int, unsigned short, unsigned char) = v5;
extern unsigned short v7 (signed short, unsigned char);
extern unsigned short (*v8) (signed short, unsigned char);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned int v11 (signed char, signed char);
extern unsigned int (*v12) (signed char, signed char);
extern unsigned int v13 (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed short, unsigned char, unsigned char);
extern signed short v15 (signed int, signed short, unsigned char, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned char, unsigned short);
extern signed char v17 (unsigned char, signed int, signed short, signed char);
extern signed char (*v18) (unsigned char, signed int, signed short, signed char);
extern signed int v19 (signed char, unsigned char, unsigned int, signed char);
extern signed int (*v20) (signed char, unsigned char, unsigned int, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v24) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern unsigned char v29 (signed char, signed int, signed char);
extern unsigned char (*v30) (signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v144 = 4U;
unsigned char v143 = 7;
unsigned int v142 = 0U;

unsigned short v9 (void)
{
{
for (;;) {
unsigned short v147 = 7;
signed char v146 = -2;
signed int v145 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v148, unsigned short v149, unsigned char v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned char v153 = 4;
signed int v152 = -1;
signed short v151 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed char v154;
signed char v155;
unsigned int v156;
v154 = 2 - -4;
v155 = 3 - -1;
v156 = v11 (v154, v155);
history[history_index++] = (int)v156;
}
break;
case 7: 
{
signed char v157;
signed char v158;
unsigned int v159;
v157 = 2 - 3;
v158 = 0 - 0;
v159 = v11 (v157, v158);
history[history_index++] = (int)v159;
}
break;
case 13: 
return v152;
default: abort ();
}
}
}
}
