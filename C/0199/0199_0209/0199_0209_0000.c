#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed char, signed short, unsigned int);
extern unsigned short v3 (signed short, signed char);
extern unsigned short (*v4) (signed short, signed char);
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern void v7 (unsigned char, signed short, signed char, unsigned short);
extern void (*v8) (unsigned char, signed short, signed char, unsigned short);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
void v11 (void);
void (*v12) (void) = v11;
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed char v15 (signed char, unsigned int, signed char, signed char);
extern signed char (*v16) (signed char, unsigned int, signed char, signed char);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern unsigned int v19 (unsigned short, signed int, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, signed int, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned short v27 (signed short, unsigned int, unsigned char);
unsigned short (*v28) (signed short, unsigned int, unsigned char) = v27;
extern signed int v29 (signed short, signed short);
extern signed int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned int v32 = 2U;
unsigned short v31 = 2;

unsigned short v27 (signed short v34, unsigned int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 6U;
signed char v38 = -1;
signed int v37 = -1;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed int v42 = -3;
unsigned char v41 = 1;
signed int v40 = -2;
trace++;
switch (trace)
{
case 11: 
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
signed int v45;
signed char v46;
signed short v47;
unsigned int v48;
unsigned int v49;
v45 = -3 - 2;
v46 = 2 - 2;
v47 = -3 + -1;
v48 = v33 + v32;
v49 = v1 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
