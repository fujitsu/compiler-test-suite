#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
unsigned char v9 (unsigned char, unsigned char, unsigned int);
unsigned char (*v10) (unsigned char, unsigned char, unsigned int) = v9;
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern void v13 (signed int, unsigned int, signed int);
extern void (*v14) (signed int, unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v17 (signed char, unsigned short, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned short, signed int, unsigned int);
extern unsigned short v19 (unsigned short, signed char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned short, signed char, signed char, unsigned char);
extern void v21 (void);
extern void (*v22) (void);
signed char v25 (signed short, unsigned short, signed short);
signed char (*v26) (signed short, unsigned short, signed short) = v25;
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
extern signed char v29 (unsigned int, signed int, unsigned int);
extern signed char (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 3U;
unsigned char v93 = 6;
signed int v92 = -2;

signed char v25 (signed short v95, unsigned short v96, signed short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 7U;
unsigned char v99 = 5;
signed char v98 = -2;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v101, unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
signed char v105 = 2;
signed short v104 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
