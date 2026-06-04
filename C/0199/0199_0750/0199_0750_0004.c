#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short);
extern unsigned int (*v2) (unsigned int, unsigned short);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (signed short, unsigned short, unsigned char, unsigned int);
extern signed short (*v6) (signed short, unsigned short, unsigned char, unsigned int);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned char, unsigned char, unsigned short);
extern signed short (*v12) (unsigned char, unsigned char, unsigned short);
extern signed int v13 (signed short, signed int, signed char, unsigned char);
extern signed int (*v14) (signed short, signed int, signed char, unsigned char);
extern void v15 (unsigned char, unsigned short);
extern void (*v16) (unsigned char, unsigned short);
extern unsigned char v17 (signed int, unsigned char, signed char, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char, signed char, unsigned char);
signed short v19 (signed int);
signed short (*v20) (signed int) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed short v23 (signed int, unsigned char, unsigned short);
signed short (*v24) (signed int, unsigned char, unsigned short) = v23;
signed short v25 (signed char);
signed short (*v26) (signed char) = v25;
signed char v27 (signed char, unsigned short);
signed char (*v28) (signed char, unsigned short) = v27;
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = -4;
signed char v129 = -2;
unsigned int v128 = 4U;

signed char v27 (signed char v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 2;
signed short v134 = -3;
signed char v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 1;
unsigned char v138 = 7;
unsigned int v137 = 6U;
trace++;
switch (trace)
{
case 5: 
return v139;
case 7: 
return v139;
case 11: 
return v139;
default: abort ();
}
}
}
}

signed short v23 (signed int v140, unsigned char v141, unsigned short v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = 3;
signed int v144 = 0;
signed char v143 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 7;
signed short v148 = -1;
signed short v147 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
