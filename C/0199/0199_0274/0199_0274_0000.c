#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (unsigned int, signed int, signed char);
extern void (*v12) (unsigned int, signed int, signed char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (unsigned char, unsigned int, signed int);
extern unsigned short (*v16) (unsigned char, unsigned int, signed int);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern signed int v21 (signed char, unsigned int, unsigned short, signed short);
extern signed int (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (signed char, unsigned int, unsigned int, signed short);
extern void (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned short v32 = 5;
signed int v31 = 2;

signed char v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
unsigned char v36 = 6;
unsigned char v35 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned char v40 = 3;
signed int v39 = -2;
unsigned int v38 = 6U;
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
unsigned int v43;
signed int v44;
v43 = 4U + 2U;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
