#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed char, signed char, unsigned int);
extern void (*v4) (signed char, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed short);
extern unsigned int (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern signed char v11 (signed short, signed int, signed char, unsigned int);
extern signed char (*v12) (signed short, signed int, signed char, unsigned int);
extern signed char v13 (unsigned int, signed int);
extern signed char (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char);
extern unsigned char (*v16) (signed char, unsigned char);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned short v25 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned short, unsigned int);
signed char v27 (signed short);
signed char (*v28) (signed short) = v27;
extern signed char v29 (signed short, signed int, unsigned char);
extern signed char (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed int v32 = -4;
unsigned short v31 = 7;

signed char v27 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -2;
signed char v36 = 2;
unsigned int v35 = 7U;
trace++;
switch (trace)
{
case 2: 
return v36;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned char v40 = 3;
signed int v39 = -3;
unsigned short v38 = 4;
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
signed char v43;
v43 = v1 ();
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
