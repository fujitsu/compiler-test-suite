#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed short, unsigned int);
extern void (*v2) (signed char, signed short, unsigned int);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (signed int, signed short);
extern signed int (*v10) (signed int, signed short);
extern unsigned int v11 (unsigned short, unsigned int, signed short);
extern unsigned int (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed int, signed short, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed short, signed int);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, signed short);
extern signed int (*v26) (unsigned int, signed short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
void v29 (unsigned short);
void (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed char v32 = 3;
unsigned int v31 = 4U;

void v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 7;
signed short v36 = 2;
signed char v35 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v40 = 2U;
unsigned int v39 = 0U;
unsigned short v38 = 0;
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
signed char v43;
signed short v44;
unsigned int v45;
v43 = -3 - v33;
v44 = -3 - 0;
v45 = 6U + 1U;
v1 (v43, v44, v45);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
