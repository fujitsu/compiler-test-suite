#include <stdlib.h>
extern signed char v1 (signed short, unsigned short, unsigned int);
extern signed char (*v2) (signed short, unsigned short, unsigned int);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (unsigned int, unsigned int, unsigned int);
extern signed int (*v6) (unsigned int, unsigned int, unsigned int);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed char v9 (unsigned char, unsigned int);
extern signed char (*v10) (unsigned char, unsigned int);
extern signed int v11 (signed char, unsigned char, signed short);
extern signed int (*v12) (signed char, unsigned char, signed short);
extern signed short v13 (signed short, signed int, unsigned short, unsigned char);
extern signed short (*v14) (signed short, signed int, unsigned short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (unsigned char);
signed short (*v18) (unsigned char) = v17;
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
signed short v21 (signed int, unsigned int, signed short);
signed short (*v22) (signed int, unsigned int, signed short) = v21;
extern void v23 (signed char, signed short);
extern void (*v24) (signed char, signed short);
extern unsigned int v25 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, signed short);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 3;
signed short v129 = 1;
signed int v128 = 0;

signed short v21 (signed int v131, unsigned int v132, signed short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = -2;
signed int v135 = 2;
unsigned int v134 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v137, unsigned short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = -2;
signed char v140 = -4;
signed int v139 = 0;
trace++;
switch (trace)
{
case 2: 
return 1;
case 6: 
return v140;
case 8: 
return v137;
default: abort ();
}
}
}
}

signed short v17 (unsigned char v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = -3;
unsigned char v144 = 3;
unsigned char v143 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
