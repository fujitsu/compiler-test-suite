#include <stdlib.h>
extern void v1 (signed char, signed int, unsigned char);
extern void (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, signed short, unsigned short);
extern signed char (*v6) (signed char, signed short, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (signed int, signed char, signed char, unsigned int);
extern void (*v10) (signed int, signed char, signed char, unsigned int);
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed char, signed int, signed int, signed int);
extern unsigned short (*v18) (signed char, signed int, signed int, signed int);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern void v23 (signed short, signed int, signed int);
extern void (*v24) (signed short, signed int, signed int);
extern unsigned int v25 (signed int, signed short, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed short, signed short, unsigned int);
extern void v27 (unsigned short, unsigned int, signed int);
extern void (*v28) (unsigned short, unsigned int, signed int);
extern void v29 (signed short, unsigned int, signed int);
extern void (*v30) (signed short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v149 = 1;
unsigned int v148 = 1U;
unsigned int v147 = 1U;

unsigned short v21 (signed char v150)
{
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = 1;
unsigned char v152 = 1;
signed char v151 = 1;
trace++;
switch (trace)
{
case 7: 
return 7;
default: abort ();
}
}
}
}

unsigned int v11 (signed char v154)
{
history[history_index++] = (int)v154;
{
for (;;) {
unsigned int v157 = 3U;
unsigned char v156 = 2;
signed short v155 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
