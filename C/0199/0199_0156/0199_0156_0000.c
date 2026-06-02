#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed short, signed short);
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned short, signed short);
extern signed short (*v8) (unsigned short, signed short);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
void v11 (signed char, signed short, signed int);
void (*v12) (signed char, signed short, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned char, signed int, unsigned short);
extern signed char v17 (unsigned short, signed char, signed int);
extern signed char (*v18) (unsigned short, signed char, signed int);
extern unsigned short v19 (unsigned char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed char, unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned short, signed short, signed short, signed char);
extern unsigned int (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned short v27 (signed short, signed int, signed char, signed int);
extern unsigned short (*v28) (signed short, signed int, signed char, signed int);
extern signed int v29 (signed char, unsigned short, unsigned short, signed short);
extern signed int (*v30) (signed char, unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed short v32 = 0;
unsigned int v31 = 2U;

unsigned char v21 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
signed short v35 = 1;
signed int v34 = -4;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

void v11 (signed char v37, signed short v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 4U;
signed short v41 = -4;
unsigned short v40 = 6;
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
unsigned char v45;
signed short v46;
signed short v47;
unsigned char v48;
v45 = 3 + 1;
v46 = v32 + 2;
v47 = -3 - -2;
v48 = v1 (v45, v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
