#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, signed short, unsigned char, unsigned char);
extern signed short v5 (signed int, signed short, unsigned int, unsigned int);
extern signed short (*v6) (signed int, signed short, unsigned int, unsigned int);
extern unsigned int v7 (unsigned char, unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned short, signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned short v13 (signed char, signed char, unsigned int);
extern unsigned short (*v14) (signed char, signed char, unsigned int);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed short v21 (signed short, signed short, signed int);
extern signed short (*v22) (signed short, signed short, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, unsigned int);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, unsigned int);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = -2;
signed int v31 = -1;

void v27 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
unsigned int v35 = 7U;
signed char v34 = -4;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
unsigned short v39 = 0;
unsigned short v38 = 1;
signed int v37 = 3;
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
unsigned char v42;
unsigned char v43;
unsigned char v44;
v42 = v33 + v33;
v43 = v33 + 0;
v44 = v1 (v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
