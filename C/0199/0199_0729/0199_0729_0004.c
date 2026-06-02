#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, signed char, signed short);
extern unsigned int (*v2) (signed int, signed short, signed char, signed short);
extern signed int v3 (signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern void v7 (signed char, signed char, signed int, unsigned short);
extern void (*v8) (signed char, signed char, signed int, unsigned short);
extern unsigned char v9 (signed int, unsigned short, unsigned char);
extern unsigned char (*v10) (signed int, unsigned short, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, unsigned int, signed short, signed int);
extern unsigned char (*v14) (unsigned int, unsigned int, signed short, signed int);
extern void v15 (signed char, unsigned short, unsigned int);
extern void (*v16) (signed char, unsigned short, unsigned int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned int v19 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v20) (signed short, signed char, unsigned int, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
signed char v23 (unsigned char, signed char, signed char);
signed char (*v24) (unsigned char, signed char, signed char) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed int v27 (unsigned short, unsigned int, signed int);
extern signed int (*v28) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v145 = 3U;
signed short v144 = -1;
signed int v143 = 0;

unsigned char v25 (void)
{
{
for (;;) {
unsigned char v148 = 2;
unsigned short v147 = 3;
unsigned short v146 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned char v149, signed char v150, signed char v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = 1;
signed short v153 = -4;
unsigned char v152 = 6;
trace++;
switch (trace)
{
case 2: 
return -3;
case 6: 
return -3;
case 8: 
return v150;
case 10: 
return v151;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v155)
{
history[history_index++] = (int)v155;
{
for (;;) {
signed char v158 = -1;
signed short v157 = -4;
signed char v156 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
