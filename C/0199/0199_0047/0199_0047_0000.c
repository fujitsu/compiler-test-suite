#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, signed char, signed int, signed short);
extern signed short (*v2) (unsigned char, signed char, signed int, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed short, signed short, signed short);
extern signed short (*v12) (signed short, signed short, signed short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, signed short);
extern unsigned int (*v16) (unsigned short, signed short, signed short);
void v17 (signed int, unsigned char);
void (*v18) (signed int, unsigned char) = v17;
signed short v19 (unsigned short);
signed short (*v20) (unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned short v25 (signed short, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned char);
extern signed short v27 (signed char, unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned int v32 = 7U;
unsigned char v31 = 1;

signed short v19 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
unsigned int v36 = 0U;
signed char v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed int v38, unsigned char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 0U;
signed char v41 = 1;
signed int v40 = 1;
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
signed char v46;
signed int v47;
signed short v48;
signed short v49;
v45 = 1 - 6;
v46 = 3 + -3;
v47 = -1 - -4;
v48 = -3 + -4;
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
