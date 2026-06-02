#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern void v3 (unsigned char, unsigned short, signed int);
extern void (*v4) (unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed int, signed int, signed short, unsigned int);
extern unsigned int (*v6) (signed int, signed int, signed short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
void v17 (signed short, unsigned int, unsigned int, signed short);
void (*v18) (signed short, unsigned int, unsigned int, signed short) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, unsigned char, signed char);
extern signed short (*v24) (unsigned char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed char v29 (signed short, signed char, unsigned int, signed char);
extern signed char (*v30) (signed short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed int v32 = 2;
signed int v31 = -3;

signed int v19 (void)
{
{
for (;;) {
signed char v36 = -4;
signed short v35 = -4;
signed short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v37, unsigned int v38, unsigned int v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 2;
signed short v42 = -3;
unsigned short v41 = 0;
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
signed char v46;
v46 = -2 - 1;
v1 (v46);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
