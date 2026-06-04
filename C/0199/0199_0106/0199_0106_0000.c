#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed int v5 (unsigned short, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned short, signed short, unsigned char, signed short);
extern signed short v7 (unsigned char, unsigned char);
extern signed short (*v8) (unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v17 (unsigned short, unsigned short, signed short);
extern void (*v18) (unsigned short, unsigned short, signed short);
extern signed int v19 (signed char, signed int, unsigned char);
extern signed int (*v20) (signed char, signed int, unsigned char);
extern unsigned char v21 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned char (*v22) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed char, unsigned int, signed short, signed char);
extern signed char (*v26) (signed char, unsigned int, signed short, signed char);
extern unsigned int v27 (signed int, signed char, unsigned char);
extern unsigned int (*v28) (signed int, signed char, unsigned char);
unsigned char v29 (unsigned short, unsigned int, unsigned char);
unsigned char (*v30) (unsigned short, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed int v32 = 2;
unsigned int v31 = 0U;

unsigned char v29 (unsigned short v34, unsigned int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 6;
unsigned int v38 = 7U;
signed char v37 = -3;
trace++;
switch (trace)
{
case 5: 
return 0;
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
unsigned short v42;
signed char v43;
signed int v44;
v42 = 7 - 0;
v43 = -1 - 3;
v44 = v1 (v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
