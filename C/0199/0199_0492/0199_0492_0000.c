#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, unsigned char, unsigned int, signed char);
extern void (*v2) (unsigned char, unsigned char, unsigned int, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed char v9 (signed short, unsigned char, unsigned char);
extern signed char (*v10) (signed short, unsigned char, unsigned char);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern unsigned char v21 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v22) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed char, signed int);
extern void (*v26) (unsigned short, unsigned int, signed char, signed int);
extern unsigned int v27 (unsigned int, signed int, signed char);
extern unsigned int (*v28) (unsigned int, signed int, signed char);
void v29 (unsigned short);
void (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned int v32 = 6U;
unsigned short v31 = 5;

void v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
unsigned short v36 = 7;
unsigned short v35 = 4;
trace++;
switch (trace)
{
case 1: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed int v40 = -1;
unsigned short v39 = 1;
signed int v38 = 2;
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
unsigned char v43;
unsigned char v44;
unsigned int v45;
signed char v46;
v43 = 3 + 0;
v44 = 7 + 7;
v45 = v32 + 1U;
v46 = v33 - v33;
v1 (v43, v44, v45, v46);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
