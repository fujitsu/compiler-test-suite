#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned char v3 (signed short, unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int, signed char, unsigned int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern unsigned short v9 (signed short, signed short, unsigned int, signed short);
extern unsigned short (*v10) (signed short, signed short, unsigned int, signed short);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed int v13 (signed short, signed short, unsigned int);
extern signed int (*v14) (signed short, signed short, unsigned int);
extern signed short v15 (unsigned int, signed char);
extern signed short (*v16) (unsigned int, signed char);
extern signed int v17 (unsigned char, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern void v21 (unsigned char, signed int, signed short, signed char);
extern void (*v22) (unsigned char, signed int, signed short, signed char);
extern void v23 (unsigned int, unsigned short, signed char, signed int);
extern void (*v24) (unsigned int, unsigned short, signed char, signed int);
extern signed short v25 (signed short, unsigned short, signed int, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int, signed int);
extern void v27 (unsigned int, unsigned int, signed char);
extern void (*v28) (unsigned int, unsigned int, signed char);
extern unsigned short v29 (signed short, signed int, unsigned int);
extern unsigned short (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v154 = 1U;
unsigned int v153 = 3U;
unsigned int v152 = 3U;

signed char v19 (void)
{
{
for (;;) {
unsigned int v157 = 3U;
unsigned int v156 = 3U;
signed char v155 = -3;
trace++;
switch (trace)
{
case 6: 
return 2;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed short v160 = -3;
unsigned char v159 = 4;
signed char v158 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v161;
signed char v162;
signed int v163;
v161 = 1 - 1;
v162 = v158 + v158;
v163 = v7 (v161, v162);
history[history_index++] = (int)v163;
}
break;
case 18: 
return 4;
default: abort ();
}
}
}
}
