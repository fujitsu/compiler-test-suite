#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (unsigned int, signed char);
signed short (*v4) (unsigned int, signed char) = v3;
signed short v5 (unsigned int);
signed short (*v6) (unsigned int) = v5;
extern signed short v9 (unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int, unsigned int);
extern signed short v11 (unsigned char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed int);
signed char v15 (unsigned char, signed int, unsigned int);
signed char (*v16) (unsigned char, signed int, unsigned int) = v15;
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (signed int, signed int);
extern unsigned int (*v20) (signed int, signed int);
extern unsigned char v21 (signed short, unsigned int, unsigned int);
extern unsigned char (*v22) (signed short, unsigned int, unsigned int);
extern signed char v23 (unsigned int, signed short, signed int, signed char);
extern signed char (*v24) (unsigned int, signed short, signed int, signed char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = 2;
unsigned short v128 = 1;
unsigned short v127 = 7;

signed char v15 (unsigned char v130, signed int v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 3;
signed char v134 = -2;
signed char v133 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -4;
unsigned int v138 = 3U;
unsigned int v137 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v140, signed char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 6;
unsigned int v143 = 0U;
signed int v142 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
