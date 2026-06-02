#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, unsigned short, signed short, signed char);
extern void (*v2) (signed short, unsigned short, signed short, signed char);
extern void v3 (signed short, unsigned int, unsigned short, signed int);
extern void (*v4) (signed short, unsigned int, unsigned short, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned int, unsigned int, unsigned char);
extern void (*v10) (signed int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (unsigned int, unsigned char, signed short);
extern signed short (*v12) (unsigned int, unsigned char, signed short);
extern void v13 (unsigned int, signed int, signed int);
extern void (*v14) (unsigned int, signed int, signed int);
void v15 (unsigned char, signed short);
void (*v16) (unsigned char, signed short) = v15;
unsigned short v17 (unsigned int, signed int, unsigned short, signed char);
unsigned short (*v18) (unsigned int, signed int, unsigned short, signed char) = v17;
extern signed int v19 (signed short, unsigned int, signed int);
extern signed int (*v20) (signed short, unsigned int, signed int);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern signed int v23 (signed short, unsigned short, signed int, unsigned int);
extern signed int (*v24) (signed short, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, unsigned char, signed int);
extern signed short (*v26) (signed short, unsigned char, signed int);
extern unsigned short v27 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v28) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed int v32 = -2;
signed int v31 = 1;

unsigned short v17 (unsigned int v34, signed int v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned short v39 = 3;
signed int v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 2;
signed int v44 = 0;
unsigned short v43 = 6;
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
signed short v48;
unsigned short v49;
signed short v50;
signed char v51;
v48 = 3 + -2;
v49 = v33 + 5;
v50 = 3 - 1;
v51 = -4 - -2;
v1 (v48, v49, v50, v51);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
