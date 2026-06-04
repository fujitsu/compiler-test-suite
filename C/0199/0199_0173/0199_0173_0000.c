#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char, signed char, unsigned int);
extern unsigned int (*v4) (signed char, signed char, unsigned int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed char v9 (signed char, signed short);
extern signed char (*v10) (signed char, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
void v17 (signed char);
void (*v18) (signed char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed short v21 (signed char, signed char);
signed short (*v22) (signed char, signed char) = v21;
extern signed short v23 (signed char, unsigned char, signed short);
extern signed short (*v24) (signed char, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = -1;
signed char v31 = 3;

signed short v21 (signed char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 2;
unsigned char v37 = 2;
unsigned int v36 = 7U;
trace++;
switch (trace)
{
case 1: 
return -2;
case 3: 
return -2;
default: abort ();
}
}
}
}

void v17 (signed char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 3;
unsigned char v41 = 0;
signed short v40 = -4;
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
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
