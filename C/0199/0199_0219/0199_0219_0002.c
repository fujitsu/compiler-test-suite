#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (signed int, signed short, unsigned short, signed int);
extern signed char (*v8) (signed int, signed short, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (unsigned int, signed char);
unsigned short (*v12) (unsigned int, signed char) = v11;
extern signed char v13 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (unsigned int, unsigned short, signed short, unsigned int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern signed int v17 (unsigned short, unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned char, signed int, signed short);
extern unsigned int (*v24) (unsigned char, signed int, signed short);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int, unsigned int, unsigned int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = 1;
unsigned int v97 = 4U;
unsigned short v96 = 2;

unsigned int v25 (void)
{
{
for (;;) {
signed short v101 = 0;
signed short v100 = -1;
unsigned char v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v102, signed char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -1;
signed char v105 = 1;
unsigned short v104 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
