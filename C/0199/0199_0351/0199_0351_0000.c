#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
void v3 (unsigned char, signed int);
void (*v4) (unsigned char, signed int) = v3;
extern unsigned char v7 (signed char, signed int, signed char, signed short);
extern unsigned char (*v8) (signed char, signed int, signed char, signed short);
extern void v11 (signed short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned char, signed int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
unsigned short v15 (signed char);
unsigned short (*v16) (signed char) = v15;
extern signed short v17 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char, signed char, unsigned char);
extern void v19 (unsigned short, signed short, signed short);
extern void (*v20) (unsigned short, signed short, signed short);
extern void v21 (signed short, unsigned char);
extern void (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (signed int, signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = 2;
signed char v31 = -4;

unsigned short v15 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 2;
signed char v36 = -3;
unsigned short v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -1;
signed char v41 = 0;
unsigned short v40 = 2;
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
