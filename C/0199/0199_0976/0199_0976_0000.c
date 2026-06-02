#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
signed short v9 (signed char, signed char, signed short);
signed short (*v10) (signed char, signed char, signed short) = v9;
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (unsigned short, unsigned int, signed int);
extern void (*v22) (unsigned short, unsigned int, signed int);
extern unsigned short v23 (signed char, signed int, unsigned int, unsigned int);
extern unsigned short (*v24) (signed char, signed int, unsigned int, unsigned int);
extern signed short v25 (signed char, signed short, signed int);
extern signed short (*v26) (signed char, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = -3;
unsigned char v31 = 5;

unsigned int v17 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
signed short v35 = -2;
signed int v34 = 1;
trace++;
switch (trace)
{
case 5: 
return 5U;
case 7: 
return 7U;
default: abort ();
}
}
}
}

signed short v9 (signed char v37, signed char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -4;
unsigned int v41 = 7U;
unsigned short v40 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
