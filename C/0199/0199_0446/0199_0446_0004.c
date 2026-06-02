#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned int);
extern unsigned char (*v2) (unsigned char, signed int, unsigned int);
signed char v3 (signed int, unsigned short, signed int, unsigned int);
signed char (*v4) (signed int, unsigned short, signed int, unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (signed char, unsigned char, signed int, unsigned short);
extern void (*v8) (signed char, unsigned char, signed int, unsigned short);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed short, unsigned char, signed int);
extern signed int (*v16) (signed short, unsigned char, signed int);
signed short v17 (unsigned char, unsigned short, signed short);
signed short (*v18) (unsigned char, unsigned short, signed short) = v17;
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern void v21 (unsigned short, unsigned short, signed int);
extern void (*v22) (unsigned short, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed int, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v138 = 1;
unsigned int v137 = 2U;
signed short v136 = 2;

signed short v17 (unsigned char v139, unsigned short v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 3;
signed short v143 = 3;
unsigned short v142 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v145, unsigned short v146, signed int v147, unsigned int v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = 2;
unsigned int v150 = 4U;
unsigned int v149 = 3U;
trace++;
switch (trace)
{
case 5: 
return v151;
case 7: 
return -1;
case 11: 
return 3;
default: abort ();
}
}
}
}
