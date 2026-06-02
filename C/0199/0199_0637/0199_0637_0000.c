#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, signed char, unsigned char);
extern void (*v2) (unsigned char, signed char, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v7 (unsigned char, signed int);
extern signed short (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (unsigned char, unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned char, signed short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char, signed short);
extern unsigned short v17 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned char, unsigned short);
unsigned char v19 (signed short, unsigned int, unsigned int);
unsigned char (*v20) (signed short, unsigned int, unsigned int) = v19;
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (signed short, unsigned int);
extern signed char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned short v32 = 2;
signed char v31 = -1;

unsigned char v19 (signed short v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
signed char v38 = 2;
unsigned int v37 = 4U;
trace++;
switch (trace)
{
case 3: 
return 5;
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
signed char v43;
unsigned char v44;
v42 = 1 + 1;
v43 = v31 - 0;
v44 = 2 + 6;
v1 (v42, v43, v44);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
