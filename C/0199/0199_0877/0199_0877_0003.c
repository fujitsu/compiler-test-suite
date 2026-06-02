#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed char, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed char, signed short, unsigned short);
void v3 (signed int);
void (*v4) (signed int) = v3;
extern signed short v5 (unsigned char, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (signed int, unsigned char, signed short);
extern unsigned short (*v10) (signed int, unsigned char, signed short);
extern unsigned short v11 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
unsigned int v17 (unsigned short, unsigned int);
unsigned int (*v18) (unsigned short, unsigned int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed char v23 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int, unsigned int);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned short v27 (unsigned int, signed short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned int, signed short, unsigned char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 0U;
unsigned short v93 = 2;
unsigned char v92 = 0;

void v25 (void)
{
{
for (;;) {
signed char v97 = -1;
signed int v96 = -4;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 2;
signed int v101 = 1;
signed char v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 0;
signed char v105 = -3;
signed char v104 = -4;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
