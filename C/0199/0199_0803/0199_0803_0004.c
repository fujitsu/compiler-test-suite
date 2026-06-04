#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, signed char, signed char);
extern signed short (*v2) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (unsigned int, signed int, unsigned short, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned short, signed short);
signed int v9 (unsigned short, signed short, signed char, signed short);
signed int (*v10) (unsigned short, signed short, signed char, signed short) = v9;
extern void v11 (signed short, unsigned short, signed char, signed short);
extern void (*v12) (signed short, unsigned short, signed char, signed short);
void v13 (signed short, unsigned short);
void (*v14) (signed short, unsigned short) = v13;
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern void v17 (signed int, signed char, unsigned char, unsigned int);
extern void (*v18) (signed int, signed char, unsigned char, unsigned int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (signed int, signed int, signed int, unsigned short);
extern signed char (*v22) (signed int, signed int, signed int, unsigned short);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
signed int v25 (unsigned short, signed short, unsigned int, signed char);
signed int (*v26) (unsigned short, signed short, unsigned int, signed char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned short);
extern signed char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v145 = 3;
signed short v144 = -1;
signed char v143 = 1;

signed int v25 (unsigned short v146, signed short v147, unsigned int v148, signed char v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = 1;
signed char v151 = 2;
unsigned short v150 = 4;
trace++;
switch (trace)
{
case 3: 
return -3;
case 5: 
return 3;
case 7: 
return -3;
default: abort ();
}
}
}
}

void v13 (signed short v153, unsigned short v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed int v157 = -1;
signed int v156 = -1;
unsigned char v155 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v158, signed short v159, signed char v160, signed short v161)
{
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
{
for (;;) {
signed char v164 = -1;
signed short v163 = -4;
signed int v162 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
