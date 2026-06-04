#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned char);
extern unsigned int (*v2) (signed short, unsigned char);
signed char v5 (unsigned short, signed int);
signed char (*v6) (unsigned short, signed int) = v5;
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern unsigned char v9 (unsigned int, signed int, unsigned short);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (signed char, unsigned short, signed char);
extern signed short (*v14) (signed char, unsigned short, signed char);
unsigned short v15 (signed short, unsigned short);
unsigned short (*v16) (signed short, unsigned short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed int, signed short);
extern signed short (*v20) (signed int, signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, unsigned short, unsigned char);
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
extern unsigned int v27 (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned short, unsigned int, unsigned char);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v132 = 3;
unsigned short v131 = 7;
signed short v130 = -1;

unsigned short v29 (void)
{
{
for (;;) {
signed short v135 = 0;
unsigned char v134 = 5;
unsigned char v133 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v136, unsigned short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 1;
signed char v139 = 0;
signed char v138 = 3;
trace++;
switch (trace)
{
case 3: 
return 0;
case 7: 
return 3;
default: abort ();
}
}
}
}

signed char v5 (unsigned short v141, signed int v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 0;
unsigned short v144 = 7;
signed short v143 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
