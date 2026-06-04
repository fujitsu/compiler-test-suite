#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed char, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v3 (signed char, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned short, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
void v13 (void);
void (*v14) (void) = v13;
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern unsigned short v17 (signed int, signed int, signed int, signed int);
extern unsigned short (*v18) (signed int, signed int, signed int, signed int);
extern unsigned short v19 (unsigned int, signed short, signed char, unsigned short);
extern unsigned short (*v20) (unsigned int, signed short, signed char, unsigned short);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (unsigned int, signed int, unsigned int);
extern signed int (*v24) (unsigned int, signed int, unsigned int);
extern unsigned int v25 (signed char, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short);
unsigned char v27 (unsigned int, signed int, unsigned int);
unsigned char (*v28) (unsigned int, signed int, unsigned int) = v27;
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed short v32 = 3;
signed int v31 = -4;

unsigned char v27 (unsigned int v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 4;
signed int v38 = 2;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned int v42 = 5U;
unsigned int v41 = 6U;
signed char v40 = -1;
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
unsigned char v45;
unsigned short v46;
signed char v47;
signed int v48;
signed char v49;
v45 = 0 + 2;
v46 = 1 + 1;
v47 = v33 - 1;
v48 = v31 - -2;
v49 = v1 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
