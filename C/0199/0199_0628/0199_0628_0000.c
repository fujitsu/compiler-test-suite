#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
unsigned short v5 (unsigned short, unsigned char);
unsigned short (*v6) (unsigned short, unsigned char) = v5;
extern signed short v7 (unsigned short, unsigned int, unsigned int, signed int);
extern signed short (*v8) (unsigned short, unsigned int, unsigned int, signed int);
extern void v9 (signed char);
extern void (*v10) (signed char);
void v11 (signed int, signed int, unsigned short, unsigned char);
void (*v12) (signed int, signed int, unsigned short, unsigned char) = v11;
extern signed char v13 (signed int, signed char, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v19 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v20) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int (*v24) (unsigned int, signed short, unsigned int, unsigned int);
extern void v25 (unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, signed char, signed char, unsigned short);
extern void (*v30) (signed short, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = 0;
signed int v31 = 2;

void v11 (signed int v34, signed int v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned short v39 = 0;
signed short v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 3;
unsigned char v44 = 4;
signed char v43 = 2;
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
signed char v48;
v48 = v33 - v33;
v1 (v48);
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
