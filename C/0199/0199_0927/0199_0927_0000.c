#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (unsigned char, signed short, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, signed int, unsigned int);
extern void v7 (unsigned int, signed int, signed short);
extern void (*v8) (unsigned int, signed int, signed short);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (unsigned short, signed int, signed int, unsigned int);
extern unsigned short (*v18) (unsigned short, signed int, signed int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
signed char v21 (unsigned char);
signed char (*v22) (unsigned char) = v21;
extern unsigned char v23 (unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short);
extern signed char v25 (unsigned short, signed int, signed char, signed short);
extern signed char (*v26) (unsigned short, signed int, signed char, signed short);
void v27 (signed char, signed short);
void (*v28) (signed char, signed short) = v27;
extern void v29 (signed int, signed short);
extern void (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = 3;
signed char v31 = 1;

void v27 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 5;
unsigned short v37 = 0;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 0U;
signed short v41 = -3;
unsigned short v40 = 1;
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
signed int v45;
unsigned short v46;
v45 = -4 + 0;
v46 = v1 (v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
