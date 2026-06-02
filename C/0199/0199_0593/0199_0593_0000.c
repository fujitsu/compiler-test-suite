#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v2) (unsigned char, signed int, signed short, signed int);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
void v5 (unsigned short, unsigned short, unsigned char);
void (*v6) (unsigned short, unsigned short, unsigned char) = v5;
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern unsigned int v9 (signed char, unsigned short);
extern unsigned int (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char);
extern signed int (*v12) (unsigned short, signed short, unsigned char);
extern unsigned char v13 (signed short, signed char);
extern unsigned char (*v14) (signed short, signed char);
extern unsigned int v17 (unsigned int, unsigned char, signed int);
extern unsigned int (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v27 (signed short, unsigned char, signed int);
extern void (*v28) (signed short, unsigned char, signed int);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned short v32 = 4;
unsigned int v31 = 2U;

void v5 (unsigned short v34, unsigned short v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
signed int v38 = 3;
unsigned char v37 = 2;
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
signed int v43;
signed short v44;
signed int v45;
unsigned int v46;
v42 = 0 + 0;
v43 = -4 - 1;
v44 = -4 + 3;
v45 = 2 - 0;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
