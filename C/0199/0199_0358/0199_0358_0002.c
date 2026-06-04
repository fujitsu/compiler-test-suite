#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned int);
extern signed short (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed int v11 (signed char, signed char, unsigned short, signed char);
extern signed int (*v12) (signed char, signed char, unsigned short, signed char);
extern void v13 (unsigned char, unsigned short, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned short, unsigned int, signed char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (signed int, signed int, unsigned int);
unsigned int (*v18) (signed int, signed int, unsigned int) = v17;
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v23 (signed char, signed int, unsigned int, signed int);
extern signed int (*v24) (signed char, signed int, unsigned int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, signed short);
extern signed char (*v26) (unsigned int, signed int, signed int, signed short);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v96 = 0U;
unsigned char v95 = 1;
signed short v94 = -4;

signed short v27 (void)
{
{
for (;;) {
signed short v99 = 3;
unsigned int v98 = 6U;
signed char v97 = 1;
trace++;
switch (trace)
{
case 3: 
return v99;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v100, signed int v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -3;
signed int v104 = -2;
unsigned short v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
