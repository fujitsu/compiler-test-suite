#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned int, unsigned short, signed char);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned short v13 (unsigned char, signed short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned char, signed short, signed short, unsigned short);
extern void v15 (unsigned char, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed char);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (signed int, signed int);
extern signed short (*v28) (signed int, signed int);
extern unsigned int v29 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v30) (signed short, unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -4;
unsigned short v31 = 0;

unsigned int v11 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
unsigned int v35 = 0U;
signed int v34 = -2;
trace++;
switch (trace)
{
case 4: 
return 1U;
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
signed char v39;
v39 = v1 ();
history[history_index++] = (int)v39;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
