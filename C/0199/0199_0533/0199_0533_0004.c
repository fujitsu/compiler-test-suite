#include <stdlib.h>
extern signed int v1 (signed int, signed char, unsigned int);
extern signed int (*v2) (signed int, signed char, unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern unsigned char v7 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v8) (signed short, unsigned char, unsigned char, signed char);
extern void v9 (signed short, signed char, signed short, unsigned short);
extern void (*v10) (signed short, signed char, signed short, unsigned short);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (signed short, signed short, signed short, unsigned short);
extern signed int (*v14) (signed short, signed short, signed short, unsigned short);
unsigned int v15 (unsigned char, signed short);
unsigned int (*v16) (unsigned char, signed short) = v15;
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (signed char, unsigned short, unsigned short);
extern signed short (*v20) (signed char, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed char v23 (signed char, unsigned short);
signed char (*v24) (signed char, unsigned short) = v23;
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v135 = -3;
unsigned int v134 = 4U;
unsigned int v133 = 3U;

signed char v23 (signed char v136, unsigned short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 3;
signed char v139 = 3;
unsigned char v138 = 6;
trace++;
switch (trace)
{
case 4: 
return v139;
case 6: 
return 1;
case 8: 
return 1;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 5;
signed char v144 = 0;
unsigned int v143 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
