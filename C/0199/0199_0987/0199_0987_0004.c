#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
signed char v5 (signed int, unsigned short, signed short);
signed char (*v6) (signed int, unsigned short, signed short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
signed int v11 (signed char, signed int, signed int, unsigned short);
signed int (*v12) (signed char, signed int, signed int, unsigned short) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
signed short v19 (unsigned int, signed short, unsigned int);
signed short (*v20) (unsigned int, signed short, unsigned int) = v19;
extern unsigned char v21 (unsigned char, signed char, unsigned short, signed int);
extern unsigned char (*v22) (unsigned char, signed char, unsigned short, signed int);
extern signed char v23 (unsigned char, unsigned short, unsigned int);
extern signed char (*v24) (unsigned char, unsigned short, unsigned int);
extern unsigned int v25 (unsigned char, signed char, signed short, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed short, unsigned int);
extern void v27 (signed char, signed char, unsigned int);
extern void (*v28) (signed char, signed char, unsigned int);
void v29 (signed char, unsigned short);
void (*v30) (signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v133 = -3;
signed short v132 = -4;
unsigned short v131 = 0;

void v29 (signed char v134, unsigned short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -4;
signed int v137 = 2;
unsigned char v136 = 7;
trace++;
switch (trace)
{
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v19 (unsigned int v139, signed short v140, unsigned int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = 1;
signed char v143 = 1;
signed char v142 = 1;
trace++;
switch (trace)
{
case 2: 
return v140;
default: abort ();
}
}
}
}

signed int v11 (signed char v145, signed int v146, signed int v147, unsigned short v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned int v151 = 2U;
signed short v150 = 2;
unsigned int v149 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v152, unsigned short v153, signed short v154)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed char v157 = 3;
signed short v156 = -2;
signed short v155 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
