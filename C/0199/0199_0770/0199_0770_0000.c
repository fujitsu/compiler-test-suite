#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (signed char, unsigned char, unsigned char);
extern signed short (*v20) (signed char, unsigned char, unsigned char);
extern unsigned short v21 (unsigned short, signed char, unsigned int);
extern unsigned short (*v22) (unsigned short, signed char, unsigned int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
void v29 (signed int);
void (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned short v32 = 4;
unsigned char v31 = 5;

void v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 2;
unsigned short v36 = 5;
unsigned int v35 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v40 = 1;
unsigned int v39 = 0U;
unsigned char v38 = 2;
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
signed int v43;
v43 = v1 ();
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
