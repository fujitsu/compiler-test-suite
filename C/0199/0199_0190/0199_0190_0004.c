#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed char v7 (signed char, unsigned int, signed int);
extern signed char (*v8) (signed char, unsigned int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (unsigned char, unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned char, unsigned short, signed short, unsigned char);
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, signed char, signed short, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short, signed short);
extern unsigned int v19 (signed int, signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed int, signed short, unsigned short, signed int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
signed int v23 (signed int, signed int, unsigned short);
signed int (*v24) (signed int, signed int, unsigned short) = v23;
extern void v25 (signed int, unsigned char, signed short, unsigned int);
extern void (*v26) (signed int, unsigned char, signed short, unsigned int);
extern signed char v27 (unsigned int, signed short, signed int, signed short);
extern signed char (*v28) (unsigned int, signed short, signed int, signed short);
unsigned short v29 (signed char, signed int, unsigned short);
unsigned short (*v30) (signed char, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v143 = 2;
unsigned int v142 = 7U;
signed int v141 = -4;

unsigned short v29 (signed char v144, signed int v145, unsigned short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned int v149 = 4U;
unsigned short v148 = 7;
signed char v147 = -3;
trace++;
switch (trace)
{
case 2: 
return v146;
case 4: 
{
signed char v150;
unsigned int v151;
signed int v152;
signed char v153;
v150 = v144 - v147;
v151 = v149 - v149;
v152 = v145 - 1;
v153 = v7 (v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 6: 
{
signed char v154;
unsigned int v155;
signed int v156;
signed char v157;
v154 = v147 + 3;
v155 = 6U - 6U;
v156 = v145 - v145;
v157 = v7 (v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 10: 
return 7;
case 14: 
return v148;
default: abort ();
}
}
}
}

signed int v23 (signed int v158, signed int v159, unsigned short v160)
{
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
signed char v163 = -1;
unsigned short v162 = 5;
signed char v161 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v166 = 1;
unsigned int v165 = 2U;
unsigned char v164 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
