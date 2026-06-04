#include <stdlib.h>
extern unsigned short v3 (unsigned char, signed char, unsigned int);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
unsigned short v11 (signed short, signed int);
unsigned short (*v12) (signed short, signed int) = v11;
extern signed char v13 (unsigned char, signed int, signed short);
extern signed char (*v14) (unsigned char, signed int, signed short);
extern signed int v15 (unsigned int, unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, unsigned int, signed int, signed int);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern signed short v19 (unsigned int, unsigned int, unsigned short);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short);
unsigned short v23 (signed int, unsigned char, unsigned int, signed int);
unsigned short (*v24) (signed int, unsigned char, unsigned int, signed int) = v23;
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 5;
signed short v127 = 1;
signed int v126 = 1;

unsigned short v23 (signed int v129, unsigned char v130, unsigned int v131, signed int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 5;
signed int v134 = 0;
signed char v133 = 3;
trace++;
switch (trace)
{
case 2: 
return 5;
case 4: 
return 3;
default: abort ();
}
}
}
}

unsigned char v17 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 0;
unsigned short v138 = 3;
unsigned short v137 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v140, signed int v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 1;
signed int v143 = -2;
signed int v142 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
