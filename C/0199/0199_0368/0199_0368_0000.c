#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (unsigned char, unsigned short, unsigned char);
extern signed short (*v10) (unsigned char, unsigned short, unsigned char);
extern void v11 (unsigned int);
extern void (*v12) (unsigned int);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed int v19 (signed int, signed int, signed char, signed int);
extern signed int (*v20) (signed int, signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (signed short);
void (*v26) (signed short) = v25;
extern unsigned short v27 (unsigned int, signed int);
extern unsigned short (*v28) (unsigned int, signed int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned short v32 = 7;
unsigned short v31 = 1;

void v25 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 0;
unsigned short v36 = 2;
unsigned char v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed short v40 = 2;
unsigned char v39 = 1;
signed short v38 = -2;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
