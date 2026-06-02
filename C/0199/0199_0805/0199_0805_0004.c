#include <stdlib.h>
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned char, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned char, signed char);
extern unsigned short v7 (signed char, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed short, unsigned int);
extern unsigned short v9 (signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed int, signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed int, signed short, unsigned short);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (unsigned short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, signed int, unsigned int, signed char);
extern signed int v23 (unsigned short, signed short, unsigned int, unsigned int);
extern signed int (*v24) (unsigned short, signed short, unsigned int, unsigned int);
extern unsigned int v25 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned short, signed int, unsigned char);
void v27 (unsigned int, unsigned int, unsigned int);
void (*v28) (unsigned int, unsigned int, unsigned int) = v27;
unsigned int v29 (unsigned int);
unsigned int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v141 = 6;
signed int v140 = -4;
signed int v139 = -1;

unsigned int v29 (unsigned int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = -2;
signed short v144 = -1;
unsigned short v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (unsigned int v146, unsigned int v147, unsigned int v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed int v151 = 3;
signed char v150 = -4;
unsigned char v149 = 7;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v154 = 3U;
unsigned int v153 = 0U;
signed char v152 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
