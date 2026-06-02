#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned int);
extern void (*v2) (signed char, unsigned short, unsigned int);
extern unsigned short v3 (signed short, unsigned char, signed char);
extern unsigned short (*v4) (signed short, unsigned char, signed char);
extern void v5 (unsigned short, unsigned short, unsigned char, signed char);
extern void (*v6) (unsigned short, unsigned short, unsigned char, signed char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern unsigned char v15 (unsigned short, signed char, signed char, unsigned char);
extern unsigned char (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned char);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
void v25 (unsigned char, unsigned int, signed short);
void (*v26) (unsigned char, unsigned int, signed short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed short v32 = -3;
signed int v31 = 1;

unsigned short v29 (void)
{
{
for (;;) {
unsigned char v36 = 5;
signed short v35 = -3;
unsigned int v34 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v37, unsigned int v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
signed short v41 = -1;
unsigned short v40 = 4;
trace++;
switch (trace)
{
case 8: 
return;
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
signed char v45;
unsigned short v46;
unsigned int v47;
v45 = -2 + -4;
v46 = 7 - 3;
v47 = 5U + 1U;
v1 (v45, v46, v47);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
