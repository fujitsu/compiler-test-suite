#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (unsigned int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned short, signed int, unsigned int, unsigned char);
extern signed int v17 (signed int);
extern signed int (*v18) (signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed short, unsigned short);
extern unsigned int (*v24) (signed short, unsigned short);
extern unsigned int v25 (signed int, unsigned int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned int, unsigned char);
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
extern signed char v29 (signed int, unsigned int, signed short);
extern signed char (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned int v32 = 1U;
unsigned int v31 = 0U;

unsigned short v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 5;
unsigned int v36 = 7U;
unsigned char v35 = 7;
trace++;
switch (trace)
{
case 2: 
return v37;
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
signed short v40;
v40 = v1 ();
history[history_index++] = (int)v40;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
