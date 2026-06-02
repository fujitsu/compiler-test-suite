#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed short v5 (unsigned int, unsigned int);
extern signed short (*v6) (unsigned int, unsigned int);
extern void v7 (unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned char, signed int, unsigned short);
extern unsigned short v9 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned short, signed int, unsigned char);
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
void v13 (unsigned short, unsigned short, unsigned char);
void (*v14) (unsigned short, unsigned short, unsigned char) = v13;
extern unsigned short v15 (signed char, signed char, signed short, unsigned char);
extern unsigned short (*v16) (signed char, signed char, signed short, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed int, signed int, unsigned char);
extern signed char (*v24) (signed int, signed int, unsigned char);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern unsigned short v27 (unsigned char, signed char, signed char);
extern unsigned short (*v28) (unsigned char, signed char, signed char);
void v29 (signed short);
void (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = 0;
signed char v129 = 2;
unsigned int v128 = 3U;

void v29 (signed short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 0U;
signed char v133 = 2;
unsigned char v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v135, unsigned short v136, unsigned char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 0;
signed char v139 = 3;
unsigned int v138 = 2U;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
