#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed short v7 (signed short, unsigned char, signed char, signed short);
extern signed short (*v8) (signed short, unsigned char, signed char, signed short);
extern unsigned int v9 (signed short, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, signed char, signed int, signed short);
extern unsigned char (*v12) (unsigned short, signed char, signed int, signed short);
unsigned int v13 (unsigned short);
unsigned int (*v14) (unsigned short) = v13;
extern void v15 (signed int, signed char);
extern void (*v16) (signed int, signed char);
unsigned short v17 (unsigned short, signed int, unsigned short);
unsigned short (*v18) (unsigned short, signed int, unsigned short) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v21 (signed short, unsigned short, unsigned short);
extern signed int (*v22) (signed short, unsigned short, unsigned short);
unsigned short v23 (signed int, signed short, unsigned char, unsigned short);
unsigned short (*v24) (signed int, signed short, unsigned char, unsigned short) = v23;
extern void v25 (unsigned char, signed short, signed int);
extern void (*v26) (unsigned char, signed short, signed int);
extern signed short v27 (unsigned int, signed short, unsigned char, signed char);
extern signed short (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v136 = 5;
unsigned short v135 = 5;
signed int v134 = -1;

unsigned short v23 (signed int v137, signed short v138, unsigned char v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 3U;
unsigned short v142 = 6;
signed short v141 = -4;
trace++;
switch (trace)
{
case 4: 
return 0;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v144, signed int v145, unsigned short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 1;
unsigned short v148 = 3;
unsigned char v147 = 0;
trace++;
switch (trace)
{
case 8: 
return 5;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v150)
{
history[history_index++] = (int)v150;
{
for (;;) {
signed char v153 = -2;
signed char v152 = -4;
signed char v151 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
