#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed short v3 (unsigned int, unsigned char, unsigned int);
extern signed short (*v4) (unsigned int, unsigned char, unsigned int);
extern signed short v5 (signed char, signed char, unsigned char, unsigned int);
extern signed short (*v6) (signed char, signed char, unsigned char, unsigned int);
extern void v7 (signed short, signed short, signed short, signed short);
extern void (*v8) (signed short, signed short, signed short, signed short);
extern void v9 (unsigned short, unsigned short);
extern void (*v10) (unsigned short, unsigned short);
extern unsigned short v11 (signed short, signed int, signed char, signed char);
extern unsigned short (*v12) (signed short, signed int, signed char, signed char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed short, unsigned char, signed int, signed int);
extern unsigned int (*v18) (signed short, unsigned char, signed int, signed int);
signed int v19 (signed short, unsigned short, signed int, signed int);
signed int (*v20) (signed short, unsigned short, signed int, signed int) = v19;
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
signed short v25 (void);
signed short (*v26) (void) = v25;
signed int v27 (signed char, unsigned int, unsigned int);
signed int (*v28) (signed char, unsigned int, unsigned int) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v128 = 2;
signed short v127 = 3;
signed short v126 = -1;

signed int v27 (signed char v129, unsigned int v130, unsigned int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 3U;
signed short v133 = 2;
unsigned int v132 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
unsigned int v137 = 2U;
signed int v136 = 3;
signed short v135 = 0;
trace++;
switch (trace)
{
case 5: 
return v135;
default: abort ();
}
}
}
}

signed int v19 (signed short v138, unsigned short v139, signed int v140, signed int v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -4;
signed int v143 = -4;
signed short v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
