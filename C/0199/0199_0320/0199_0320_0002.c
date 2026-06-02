#include <stdlib.h>
extern void v3 (signed char, unsigned char);
extern void (*v4) (signed char, unsigned char);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned int v17 (unsigned int, unsigned char);
unsigned int (*v18) (unsigned int, unsigned char) = v17;
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern signed int v21 (signed short, unsigned int, signed char, unsigned short);
extern signed int (*v22) (signed short, unsigned int, signed char, unsigned short);
extern unsigned char v23 (unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, signed char);
extern signed int v25 (unsigned int, unsigned int, signed char, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int, signed char, unsigned int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned char v29 (signed short, signed short, unsigned int);
extern unsigned char (*v30) (signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = -3;
signed char v96 = 1;
signed short v95 = -3;

unsigned char v27 (void)
{
{
for (;;) {
signed char v100 = 1;
unsigned int v99 = 5U;
signed short v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 1;
unsigned int v104 = 6U;
unsigned char v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
