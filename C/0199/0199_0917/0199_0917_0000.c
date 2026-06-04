#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, signed int, unsigned char, signed int);
extern void (*v4) (signed short, signed int, unsigned char, signed int);
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
extern unsigned short v7 (unsigned int, unsigned short, signed char);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (signed short, signed short, signed int, signed int);
extern void (*v14) (signed short, signed short, signed int, signed int);
extern void v15 (signed int, unsigned int, signed char, unsigned int);
extern void (*v16) (signed int, unsigned int, signed char, unsigned int);
void v19 (signed char, unsigned char, unsigned int, unsigned char);
void (*v20) (signed char, unsigned char, unsigned int, unsigned char) = v19;
extern unsigned int v21 (signed short, signed short, unsigned short, unsigned char);
extern unsigned int (*v22) (signed short, signed short, unsigned short, unsigned char);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed short v25 (unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (unsigned int, unsigned char, unsigned int);
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed int v32 = 3;
unsigned int v31 = 6U;

void v19 (signed char v34, unsigned char v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 5;
unsigned int v39 = 3U;
signed int v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed int v43 = -3;
signed short v42 = 0;
unsigned short v41 = 4;
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
unsigned char v46;
v46 = v1 ();
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
