#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed char);
extern signed char (*v2) (unsigned int, signed char);
extern unsigned char v3 (unsigned int, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned char, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v11 (unsigned char, unsigned short, signed short, unsigned int);
extern signed int (*v12) (unsigned char, unsigned short, signed short, unsigned int);
signed short v13 (signed char, signed char, signed short);
signed short (*v14) (signed char, signed char, signed short) = v13;
extern unsigned short v15 (unsigned int, signed char, signed short);
extern unsigned short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (signed int, signed short);
extern signed char (*v18) (signed int, signed short);
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed char v32 = -3;
unsigned char v31 = 4;

signed int v19 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 4;
signed int v36 = 3;
unsigned char v35 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v38, signed char v39, signed short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -4;
unsigned short v42 = 5;
unsigned short v41 = 1;
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
unsigned int v46;
signed char v47;
signed char v48;
v46 = 1U + 1U;
v47 = v32 + v32;
v48 = v1 (v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
