#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short);
extern unsigned int (*v2) (unsigned int, unsigned short);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (signed short, unsigned short, unsigned char, unsigned int);
extern signed short (*v6) (signed short, unsigned short, unsigned char, unsigned int);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned char, unsigned char, unsigned short);
extern signed short (*v12) (unsigned char, unsigned char, unsigned short);
extern signed int v13 (signed short, signed int, signed char, unsigned char);
extern signed int (*v14) (signed short, signed int, signed char, unsigned char);
void v15 (unsigned char, unsigned short);
void (*v16) (unsigned char, unsigned short) = v15;
extern unsigned char v17 (signed int, unsigned char, signed char, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char, signed char, unsigned char);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed int, unsigned char, unsigned short);
extern signed short (*v24) (signed int, unsigned char, unsigned short);
extern signed short v25 (signed char);
extern signed short (*v26) (signed char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
unsigned short v29 (unsigned int);
unsigned short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 4U;
unsigned short v31 = 4;

unsigned short v29 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -1;
signed int v36 = -3;
unsigned int v35 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v38, unsigned short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 2;
signed char v41 = -2;
signed char v40 = -1;
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
unsigned int v45;
unsigned short v46;
unsigned int v47;
v45 = 3U - v32;
v46 = v31 - v31;
v47 = v1 (v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
